package eu.ehealth.dataprocessing;

import java.io.InputStream;
import java.sql.Timestamp;
import java.util.Calendar;
import java.util.List;
import javax.xml.bind.JAXBContext;
import javax.xml.bind.Unmarshaller;
import org.hibernate.Session;
import eu.ehealth.SystemDictionary;


/**
 * 
 * @author 
 *
 */
public class HRules
{


	// Instance of the session
	protected Session _session;
	
	// types of analysis
	protected static final int MeasurementAnalysis = 1;
	protected static final int QuestionnaireAnalysis = 2;

	// rules
	protected static final int LessThanRuleType = 1;
	protected static final int DoubleCompareRuleType = 2;
	protected static final int GreaterThanRuleType = 3;


	/**
	 * 
	 * @param s
	 */
	public HRules(Session s)
	{
		_session = s;
	}


	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

	/**
	 * Rule 1 - Less Than rule
	 * 
	 * @param patientID
	 * @param description
	 * @param Current
	 * @param Previous
	 * @param Threshold
	 * @param TypeOfAnalysis
	 * @return
	 */
	protected static eu.ehealth.db.db.Warning LessThanRule(Integer patientID,
			String description, double Current, double Previous, double Threshold, int TypeOfAnalysis)
	{
		SystemDictionary.webguiLog("DEBUG", "LessThanRule : Current " + Current);
		SystemDictionary.webguiLog("DEBUG", "LessThanRule : Previous " + Previous);
		SystemDictionary.webguiLog("DEBUG", "LessThanRule : Threshold " + Threshold);
		
		
		if (Current <= Previous - Threshold) {
			SystemDictionary.webguiLog("DEBUG", "LessThanRule : Current <= Previous - Threshold? " + (Current <= Previous - Threshold));
			
			return GenerateWarning(patientID, description, Current, Previous, TypeOfAnalysis, "");
		}
		else if (Current >= Previous + Threshold) {
			SystemDictionary.webguiLog("DEBUG", "LessThanRule : Current >= Previous + Threshold? " + (Current >= Previous + Threshold));
			
			return GenerateWarning(patientID, description, Current, Previous, TypeOfAnalysis, "");
		}
		return null;
	}

	
	// MEASUREMENTS ////////////////////////////////////////////////////////////////////////////////////////////////////

	/**
	 * 
	 * @param patientID
	 * @param description
	 * @param Current
	 * @param Upper
	 * @param Lower
	 * @param TypeOfAnalysis
	 * @return
	 */
	protected static eu.ehealth.db.db.Warning DoubleCompareRule(Integer patientID, String description, double Current,
			double Upper, double Lower, int TypeOfAnalysis)
	{
		if ((Current > Upper || Current < Lower)) 
		{
			String txt = String.format("-%s- [Current value = %s, Upper limit = %s, Lower limit = %s]", 
					description, Current, Upper, Lower);
			return GenerateWarning(patientID, description, Current, 0.0, TypeOfAnalysis, txt);
		}
		return null;
	}
	
	
	// QUESTIONNAIRES //////////////////////////////////////////////////////////////////////////////////////////////////

	/**
	 * 
	 * @param patientID
	 * @param description
	 * @param Current
	 * @param Previous
	 * @param Threshold
	 * @param TypeOfAnalysis
	 * @return
	 */
	protected static eu.ehealth.db.db.Warning GreaterThanRule(Integer patientID,
			String description, double Current, double Previous, double Threshold, int TypeOfAnalysis)
	{
		if (Current >= Previous + Threshold) 
		{
			return GenerateWarning(patientID, description, Current, Previous, TypeOfAnalysis, "");
		}
		return null;
	}


	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	
	/**
	 * Generate Warning
	 * 
	 * @param patientID
	 * @param description
	 * @param RiskValue
	 * @param PreviousValue
	 * @param TypeOfAnalysis
	 * @param justTxt
	 * @return
	 */
	protected static eu.ehealth.db.db.Warning GenerateWarning(Integer patientID,
			String description, double RiskValue, double PreviousValue, int TypeOfAnalysis, String justTxt)
	{
		SystemDictionary.webguiLog("INFO", "Creating warning : patientID " + patientID);

		eu.ehealth.db.db.Warning warning = new eu.ehealth.db.db.Warning();
		warning.setPatient(patientID);
		warning.setTypeOfWarning(2);
		warning.setDateTimeOfWarning(new Timestamp(Calendar.getInstance().getTimeInMillis()));
		warning.setDelivered(false);

		if (TypeOfAnalysis == MeasurementAnalysis)
		{
			if (justTxt.trim().length() == 0) {
				warning.setJustificationText(String.format("-%s- [Current value = %s, Previous value = %s]", description, RiskValue, PreviousValue));
			}
			else {
				warning.setJustificationText(justTxt);
			}
		}
		else if (TypeOfAnalysis == QuestionnaireAnalysis) 
		{
			warning.setJustificationText(description);
		}

		return warning;
	}
	
	
	/**
	 * 
	 * @return
	 */
	protected List<RuleMap> GetRules()
	{
		List<RuleMap> DefinedRules = null;
		
		try {
			JAXBContext jc = JAXBContext.newInstance(Ruleset.class);

	        Unmarshaller unmarshaller = jc.createUnmarshaller();
	        
	        ClassLoader loader = this.getClass().getClassLoader();
	        InputStream in = loader.getResourceAsStream(SystemDictionary.RULES_FILE);
	        Ruleset rules = (Ruleset) unmarshaller.unmarshal(in);

	        DefinedRules = rules.getRule();
		}
		catch (Exception ex) 
		{
			SystemDictionary.logException(ex);
		}
		
		return DefinedRules;
	}

	
}
