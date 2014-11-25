package eu.ehealth.db.wservices.users;

import java.util.ArrayList;
import org.apache.log4j.Level;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import eu.ehealth.Globals;
import eu.ehealth.SystemDictionary;
import eu.ehealth.db.xsd.Clinician;
import eu.ehealth.db.xsd.OperationResult;
import eu.ehealth.util.NullChecker;
import eu.ehealth.util.StorageComponentUtilities;


/**
 * 
 * @author a572832
 *
 */
public class CreateClinician extends BaseAppUsersOperations
{
	

	/**
	 * 
	 * @param session
	 */
	public CreateClinician(Session session)
	{
		super(session);
	}
	

	@Override
	protected OperationResult dbStorageFunction(ArrayList<Object> lo)
	{
		try
		{
			Clinician data = (Clinician) lo.get(0);
			String userId = (String) lo.get(1);
			
			SystemDictionary.webguiLog("DEBUG", "CreateClinician CALL ... ");
			SystemDictionary.webguiLog("DEBUG", "CreateClinician CALL params : Clinician object / " + userId);
			
			// DEBUG - TRACE
			if (SystemDictionary.APPLICATION_DEBUG_LEVEL == Level.DEBUG)
				StorageComponentUtilities.trace(Thread.currentThread().getStackTrace());			
			
			OperationResult res = new OperationResult();

			NullChecker nc = new NullChecker();

			userId = nc.check(userId, String.class);
			data = nc.check(data, Clinician.class);

			if (!checkUserPermissions(userId, U_ADMIN))
			{
				// set OperationResult values
				return Globals.getOpResult(Globals.ResponseCode.PERMISSION_ERROR.getCode(), "");
			}

			try
			{
				_session.beginTransaction();

				eu.ehealth.db.db.Clinician clinician = new eu.ehealth.db.db.Clinician();

				Integer pdid = importPersondata(data.getPersonData(), null);

				clinician.setPersondata(pdid);
				_session.save(clinician);

				_session.getTransaction().commit();

				// set OperationResult values
				res = Globals.getOpResult("" + clinician.getPersondata().toString(), "");
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
