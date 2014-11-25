package eu.ehealth.db.wservices.measurements;

import java.sql.Timestamp;
import java.util.ArrayList;
import org.apache.log4j.Level;
import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;
import eu.ehealth.Globals;
import eu.ehealth.SystemDictionary;
import eu.ehealth.db.DbStorageComponent;
import eu.ehealth.db.xsd.CarerAssessment;
import eu.ehealth.db.xsd.OperationResult;
import eu.ehealth.util.NullChecker;
import eu.ehealth.util.StorageComponentUtilities;


/**
 * 
 * 
 * @author a572832
 * @date 19/03/2014.
 *
 */
public class SaveCarerAssessment extends DbStorageComponent<OperationResult, Object>
{

	
	/**
	 * 
	 * @param session
	 */
	public SaveCarerAssessment(Session session)
	{
		super(session);
	}

	
	@Override
	protected OperationResult dbStorageFunction(ArrayList<Object> lo)
	{
		try
		{
			CarerAssessment assessment= (CarerAssessment) lo.get(0); 
			String userId = (String) lo.get(1);
			
			// DEBUG - TRACE
			if (SystemDictionary.APPLICATION_DEBUG_LEVEL == Level.DEBUG)
				StorageComponentUtilities.trace(Thread.currentThread().getStackTrace());			
			
			OperationResult res = new OperationResult();

			NullChecker nc = new NullChecker();

			userId = nc.check(userId, String.class);
			assessment = nc.check(assessment, CarerAssessment.class);

			if (!checkUserPermissions(userId, U_CLINICIAN, U_CARER, U_ADMIN))
			{
				// set OperationResult values
				return Globals.getOpResult(Globals.ResponseCode.PERMISSION_ERROR.getCode(), "");
			}

			try
			{
				_session.beginTransaction();
				
				int clinicianId = -1;
				// get clinician id
				try {
					Criteria crit = _session.createCriteria(eu.ehealth.db.db.Clinician.class)
							 .add( Restrictions.eq("persondata", Integer.parseInt(assessment.getClinicianID())) );
					
					Object[] obj = crit.list().toArray();
					if (obj.length == 1)
					{
						eu.ehealth.db.db.Clinician clinician = (eu.ehealth.db.db.Clinician) obj[0];
						clinicianId = clinician.getId();
					}
					SystemDictionary.webguiLog("DEBUG", "clinicianId ... " + clinicianId);
				}
				catch (Exception ex) {
					SystemDictionary.logException(ex);
				}

				eu.ehealth.db.db.CarerAssessment ca = new eu.ehealth.db.db.CarerAssessment();
				ca.setCarer(new Integer(assessment.getCarerID()));
				ca.setClinician(new Integer(clinicianId));
				ca.setDateOfAssessment(new Timestamp(assessment.getDateOfAssessment().toGregorianCalendar().getTimeInMillis()));
				ca.setRelevantHealthProblem(assessment.getRelevantHealthProblem());
				ca.setSeverityOfBurden(new Integer(assessment.getSeverityOfBurden()));
				ca.setEmotionalOrMentalDisorder(assessment.getEmotionalOrMentalDisorders());
				ca.setPsychoactiveDrugs(assessment.getPsychoactiveDrugs());
				ca.setQualityOfLife(new Integer(assessment.getQualityOfLife()));
				
				SystemDictionary.webguiLog("DEBUG", "ClinicianID ... " + assessment.getClinicianID());
				SystemDictionary.webguiLog("DEBUG", "CarerID ... " + assessment.getCarerID());

				_session.save(ca);
				_session.getTransaction().commit();

				// set OperationResult values
				res = Globals.getOpResult("" + ca.getId().toString(), "");
			}
			catch (HibernateException e)
			{
				rollbackSession();

				SystemDictionary.logException(e);

				// set OperationResult values
				res = Globals.getOpResult(Globals.ResponseCode.DATABASE_ERROR_1.getCode(), " : " + e.toString());
			}

			return res;
		}
		catch (Exception ex)
		{
			SystemDictionary.logException(ex);
			// set OperationResult values
			return Globals.getOpResult(Globals.ResponseCode.UNKNOWN_ERROR.getCode(), " : " + ex.toString());
		}
	}
	

}
