package eu.ehealth.db.wservices.users;

import java.util.ArrayList;
import org.apache.log4j.Level;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import eu.ehealth.SystemDictionary;
import eu.ehealth.db.DbStorageComponent;
import eu.ehealth.db.wservices.users.dbfunctions.FUsers;
import eu.ehealth.db.xsd.Patient;
import eu.ehealth.util.NullChecker;
import eu.ehealth.util.StorageComponentUtilities;


/**
 * 
 * 
 * @author a572832
 * @date 19/03/2014.
 *
 */
public class GetPatient extends DbStorageComponent<Patient, String>
{

	
	/**
	 * 
	 * @param session
	 */
	public GetPatient(Session session)
	{
		super(session);
	}

	
	@Override
	protected Patient dbStorageFunction(ArrayList<String> lo)
	{
		Patient p = new Patient();
		
		try
		{
			String idv = (String) lo.get(0);
			String userId = (String) lo.get(1);

			// DEBUG - TRACE
			if (SystemDictionary.APPLICATION_DEBUG_LEVEL == Level.DEBUG)
				StorageComponentUtilities.trace(Thread.currentThread().getStackTrace());

			NullChecker nc = new NullChecker();

			idv = nc.check(idv, String.class);
			userId = nc.check(userId, String.class);

			if (!checkUserPermissions(userId, U_CARER, U_CLINICIAN, U_ADMIN))
			{
				return p;
			}

			try
			{
				Integer id = new Integer(idv);
				eu.ehealth.db.db.Patient patient = (eu.ehealth.db.db.Patient) _session.load(eu.ehealth.db.db.Patient.class, id);
				FUsers fu = new FUsers(_session);
				p = fu.exportPatient(patient);
			}
			catch (HibernateException e)
			{
				SystemDictionary.logException(e);
			}

			return p;
		}
		catch (Exception ex)
		{
			SystemDictionary.logException(ex);

			return p;
		}
	}

	
}
