package eu.ehealth.dataprocessing;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.List;
import org.hibernate.Session;
import eu.ehealth.Globals;
import eu.ehealth.SystemDictionary;
import eu.ehealth.db.wservices.users.GetFromPCCATablesIdByPersonId;
import eu.ehealth.db.xsd.Measurement;
import eu.ehealth.db.xsd.OperationResult;


/**
 * 
 * @author a572832
 *
 */
public class HMeasurements extends HRules
{

	
	/**
	 * 
	 * @param s
	 */
	public HMeasurements(Session s)
	{
		super(s);
	}

	
	/**
	 * 
	 * @param patientId
	 * @param m
	 */
	public void analyzeMeasurement(Integer patientPersonId, Measurement m)
	{
		SystemDictionary.webguiLog("DEBUG", "Analyzing measurement from patient '" + patientPersonId + "' ...");

		List<RuleMap> DefinedRules = GetRules();
		String measurementType = "";
		String measurementDescription = "";

		String typeM = m.getType().getCode();

		if (m.getType().getCode().equals("2"))
		{
			measurementDescription = "Weight";
		}
		else if (m.getType().getCode().equals("11"))
		{
			measurementDescription = "Systolic Blood Pressure";
			typeM = Globals.ServerAppValue_BloodPressure;
		}
		else if (m.getType().getCode().equals("12"))
		{
			measurementDescription = "Diastolic Blood Pressure";
			typeM = Globals.ServerAppValue_BloodPressure;
		}
		
		SystemDictionary.webguiLog("DEBUG", "Measurement type  : " + measurementDescription);
		SystemDictionary.webguiLog("DEBUG", "Measurement value : " + m.getValue());

		RuleMap currentRule = null;
		for (int count = 0; count < DefinedRules.size(); count++)
		{
			measurementType = m.getType().getCode();
			String ruleDataType = DefinedRules.get(count).getDataType();
			if (measurementType.equals(ruleDataType))
			{
				currentRule = DefinedRules.get(count);
				break;
			}
		}

		if (currentRule == null) // Rule not found
			return;
		
		SystemDictionary.webguiLog("DEBUG", "Using rule CallerID : " + currentRule.getCallerID() + " / dataType: " + currentRule.getDataType());

		// get id from patient ('id' field)
		GetFromPCCATablesIdByPersonId getId = new GetFromPCCATablesIdByPersonId();
		ArrayList<String> lo = new ArrayList<String>(2);
		lo.add(patientPersonId.toString());
		lo.add("patient");
		
		OperationResult res = getId.execute(_session, lo);
		if ( Integer.parseInt(res.getCode()) > 0 )
		{
			Integer patientId = Integer.parseInt(res.getCode());
			
			SystemDictionary.webguiLog("DEBUG", "patient Id: 		'" + patientId + "'");
			SystemDictionary.webguiLog("DEBUG", "patient personId: 	'" + patientPersonId + "'");
			
			eu.ehealth.db.db.Warning generatedWarning = null;
			
			switch (currentRule.getCallerID())
			{
				case LessThanRuleType:
					SystemDictionary.webguiLog("DEBUG", "Rule name : LessThanRuleType");
					Calendar currentDate = Calendar.getInstance();
					currentDate.add(Calendar.DATE, -1);
					Calendar oneWeekBefore = (Calendar) Calendar.getInstance();
					oneWeekBefore.add(Calendar.DATE, -8);

					// look for measurements during the last week
					List<eu.ehealth.db.db.Measurement> measurements = _getPatientMeasurementX(patientPersonId, oneWeekBefore, currentDate, typeM);
					if (measurements.size() < 1)
					{
						return;
					}

					Collections.sort(measurements, Date_Order);

					// LessThanRule(patientID, description, Current, Previous, Threshold, TypeOfAnalysis)
					generatedWarning = LessThanRule(patientId, measurementDescription, m.getValue(), 
							measurements.get(measurements.size() - 1).getValue().floatValue(), 
							currentRule.getUpperLimit(), MeasurementAnalysis);
					break;
					
				case DoubleCompareRuleType:
					SystemDictionary.webguiLog("DEBUG", "Rule name : DoubleCompareRuleType");
					generatedWarning = DoubleCompareRule(patientId, measurementDescription, 
							m.getValue(), currentRule.getUpperLimit(), 
							currentRule.getLowerLimit(), MeasurementAnalysis);
					break;
			}

			if (generatedWarning != null)
			{
				SystemDictionary.webguiLog("DEBUG", "Creating warning ...");
				_session.save(generatedWarning);
			}
		}
		else 
		{
			// ERROR
			SystemDictionary.webguiLog("ERROR", "Error getting id from patient");
		}
	}
	
	
	/**
	 * 
	 * @param patientId
	 * @param _fromDate
	 * @param _toDate
	 * @param measurementType
	 * @return
	 */
	@SuppressWarnings("deprecation")
	private List<eu.ehealth.db.db.Measurement> _getPatientMeasurementX(Integer patientId, Calendar _fromDate, 
																		Calendar _toDate, String measurementType)
	{
		String fromDate = _fromDate.toString();
		String fromDateSQLFormat = _fromDate.get(Calendar.YEAR) + "-" + 
								   (_fromDate.get(Calendar.MONTH) + 1) + "-" + 
								   _fromDate.get(Calendar.DAY_OF_MONTH) + " " +
								   "00:00:00";
		String toDate = _toDate.toString();
		String toDateSQLFormat = _toDate.get(Calendar.YEAR) + "-" + 
							     (_toDate.get(Calendar.MONTH) + 1) + "-" + 
							     _toDate.get(Calendar.DAY_OF_MONTH) + " " +
							     "23:59:59";

		if (fromDate.compareTo(toDate) == 0)
		{
			Date time = _fromDate.getTime();
			time.setHours(time.getHours() + 23);
			time.setMinutes(time.getMinutes() + 59);
			time.setSeconds(time.getSeconds() + 59);
			toDate = time.toString();
		}
		else
		{
			Date time1 = _toDate.getTime();
			time1.setHours(23);
			time1.setMinutes(59);
			time1.setSeconds(59);
			toDate = time1.toString();

			Date time2 = _fromDate.getTime();
			time2.setHours(0);
			time2.setMinutes(0);
			time2.setSeconds(0);
			fromDate = time2.toString();
		}

		String sql = "";
		if (SystemDictionary.DATABASE == SystemDictionary.DataBase.MySQL) 
		{
			// compare dates : example ... STR_TO_DATE('2013-12-31 00:00:01', '%Y-%m-%d %H:%i:%s')
			sql = "SELECT m.id FROM measurement as m inner join task as t on (t.id = m.task) inner join aladdinuser as u on (u.id = t.object) WHERE u.personid = '"
					+ patientId.toString()
					+ "' AND m.datetime BETWEEN STR_TO_DATE('"
					+ fromDateSQLFormat
					+ "', '%Y-%m-%d %H:%i:%s') AND STR_TO_DATE('"
					+ toDateSQLFormat
					+ "', '%Y-%m-%d %H:%i:%s') AND m.type = '"
					+ measurementType + "'";
		}
		else 
		{
			sql = "SELECT m.id FROM measurement as m inner join task as t on (t.id = m.task) inner join aladdinuser as u on (u.id = t.object) WHERE u.personid = '"
					+ patientId.toString()
					+ "' AND m.datetime BETWEEN '"
					+ fromDate
					+ "' AND '"
					+ toDate
					+ "' AND m.type = '"
					+ measurementType + "'";
		}
		
		SystemDictionary.webguiLog("DEBUG", sql);
		Object[] ml = _session.createSQLQuery(sql).list().toArray();

		ArrayList<eu.ehealth.db.db.Measurement> export = new ArrayList<eu.ehealth.db.db.Measurement>();
		for (int i = 0; i < ml.length; i++)
		{
			Integer id = (Integer) ml[i];
			eu.ehealth.db.db.Measurement m = (eu.ehealth.db.db.Measurement) _session.load(eu.ehealth.db.db.Measurement.class, id);
			export.add(m);
		}
		return export;
	}
	
	
	/**
	 * Create Comparator for Sorting dates
	 */
	private static final Comparator<eu.ehealth.db.db.Measurement> Date_Order = new Comparator<eu.ehealth.db.db.Measurement>() {

		public int compare(eu.ehealth.db.db.Measurement a,
				eu.ehealth.db.db.Measurement b)
		{
			return a.getDatetime().compareTo(b.getDatetime());
		}
		
	};
	
	
}
