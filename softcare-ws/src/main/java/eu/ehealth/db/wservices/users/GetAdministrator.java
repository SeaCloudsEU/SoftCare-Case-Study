package eu.ehealth.db.wservices.users;

import java.util.ArrayList;
import org.apache.log4j.Level;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import eu.ehealth.SystemDictionary;
import eu.ehealth.db.DbStorageComponent;
import eu.ehealth.db.wservices.users.dbfunctions.FUsers;
import eu.ehealth.db.xsd.Administrator;
import eu.ehealth.util.NullChecker;
import eu.ehealth.util.StorageComponentUtilities;


/**
 * 
 * 
 * @author a572832
 * @date 19/03/2014.
 *
 */
public class GetAdministrator extends DbStorageComponent<Administrator, String>
{

	
	/**
	 * 
	 * @param session
	 */
	public GetAdministrator(Session session)
	{
		super(session);
	}

	
	@Override
	protected Administrator dbStorageFunction(ArrayList<String> lo)
	{
		Administrator a = new Administrator();
		try
		{
			String idv = (String) lo.get(0);
			String userId = (String) lo.get(1);
			
			// DEBUG - TRACE
			if (SystemDictionary.APPLICATION_DEBUG_LEVEL == Level.DEBUG)
				StorageComponentUtilities.trace(Thread.currentThread().getStackTrace());

			NullChecker nc = new NullChecker();

			userId = nc.check(userId, String.class);
			idv = nc.check(idv, String.class);

			if (!checkUserPermissions(userId, U_ADMIN))
			{
				return a;
			}

			try
			{
				Integer id = new Integer(idv);
				eu.ehealth.db.db.Administrator administrator = 
						(eu.ehealth.db.db.Administrator) _session.load(eu.ehealth.db.db.Administrator.class, id);

				FUsers fu = new FUsers(_session);
				a = fu.exportAdministrator(administrator);
			}
			catch (HibernateException e)
			{
				SystemDictionary.logException(e);
			}

			return a;
		}
		catch (Exception ex)
		{
			SystemDictionary.logException(ex);

			return a;
		}
	}
	

}
