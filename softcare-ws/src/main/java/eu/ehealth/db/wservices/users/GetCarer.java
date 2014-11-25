package eu.ehealth.db.wservices.users;

import java.util.ArrayList;
import org.apache.log4j.Level;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import eu.ehealth.SystemDictionary;
import eu.ehealth.db.DbStorageComponent;
import eu.ehealth.db.wservices.users.dbfunctions.FUsers;
import eu.ehealth.db.xsd.Carer;
import eu.ehealth.util.NullChecker;
import eu.ehealth.util.StorageComponentUtilities;


/**
 * 
 * 
 * @author a572832
 * @date 19/03/2014.
 *
 */
public class GetCarer extends DbStorageComponent< Carer, String>
{

	
	/**
	 * 
	 * @param session
	 */
	public GetCarer(Session session)
	{
		super(session);
	}

	
	@Override
	protected Carer dbStorageFunction(ArrayList<String> lo)
	{
		Carer c = new Carer();
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

			if (!checkUserPermissions(userId, U_CLINICIAN, U_ADMIN))
			{
				return c;
			}

			try
			{
				Integer id = new Integer(idv);
				eu.ehealth.db.db.Carer carer = 
						(eu.ehealth.db.db.Carer) _session.load(eu.ehealth.db.db.Carer.class, id);

				FUsers fu = new FUsers(_session);
				c = fu.exportCarer(carer);
			}
			catch (HibernateException e)
			{
				SystemDictionary.logException(e);
			}

			return c;
		}
		catch (Exception ex)
		{
			SystemDictionary.logException(ex);

			return c;
		}
	}

	
}
