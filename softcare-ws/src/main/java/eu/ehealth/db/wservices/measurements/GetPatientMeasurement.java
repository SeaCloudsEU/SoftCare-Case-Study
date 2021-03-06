package eu.ehealth.db.wservices.measurements;

import java.util.ArrayList;
import java.util.List;
import javax.xml.datatype.XMLGregorianCalendar;
import org.apache.log4j.Level;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import eu.ehealth.SystemDictionary;
import eu.ehealth.db.xsd.Measurement;
import eu.ehealth.db.xsd.PatientAssessment;
import eu.ehealth.util.NullChecker;
import eu.ehealth.util.StorageComponentUtilities;


/**
 * 
 * @author a572832
 *
 */
public class GetPatientMeasurement extends BaseMeasurementsOperations<List<Measurement>, Object>
{

	
	/**
	 * 
	 * @param session
	 */
	public GetPatientMeasurement(Session session)
	{
		super(session);
	}

	
	@Override
	protected List<Measurement> dbStorageFunction(ArrayList<Object> lo)
	{
		try
		{
			String patientIdv = (String) lo.get(0);
			int measurementTypev = ((Integer) lo.get(1)).intValue(); 
			XMLGregorianCalendar fromData = (XMLGregorianCalendar) lo.get(2);
			XMLGregorianCalendar toData = (XMLGregorianCalendar) lo.get(3); 
			String userId = (String) lo.get(4);
			
			List<Measurement> l = new ArrayList<Measurement>();
			// DEBUG - TRACE
			if (SystemDictionary.APPLICATION_DEBUG_LEVEL == Level.DEBUG)
				StorageComponentUtilities.trace(Thread.currentThread().getStackTrace());

			NullChecker nc = new NullChecker();

			userId = nc.check(userId, String.class);
			patientIdv = nc.check(patientIdv, String.class);
			fromData = nc.check(fromData, XMLGregorianCalendar.class);
			toData = nc.check(toData, XMLGregorianCalendar.class);

			if (!checkUserPermissions(userId, U_CARER, U_CLINICIAN, U_ADMIN, U_SERVICE))
			{
				return l;
			}

			try
			{
				Integer patientId = new Integer(patientIdv);
				Integer measurementType = new Integer(measurementTypev);

				_session.beginTransaction();

				l = getPatientMeasurement(patientId, 
										  fromData.toGregorianCalendar(), 
										  toData.toGregorianCalendar(), 
										  measurementType.toString());

				_session.getTransaction().commit();
			}
			catch (HibernateException e)
			{
				rollbackSession();
				
				SystemDictionary.logException(e);
			}

			return l;
		}
		catch (Exception ex)
		{
			SystemDictionary.logException(ex);

			return null;
		}
	}
	

}
