package eu.ehealth.db.wservices.users;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import org.apache.log4j.Level;
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
public class GetAvailableCarers extends DbStorageComponent<List<Carer>, String>
{

	
	/**
	 * 
	 * @param session
	 */
	public GetAvailableCarers(Session session)
	{
		super(session);
	}

	
	@Override
	protected List<Carer> dbStorageFunction(ArrayList<String> lo)
	{
		List<Carer> l = new ArrayList<Carer>();
		try
		{
			String userId = (String) lo.get(0);
			
			// DEBUG - TRACE
			if (SystemDictionary.APPLICATION_DEBUG_LEVEL == Level.DEBUG)
				StorageComponentUtilities.trace(Thread.currentThread().getStackTrace());

			NullChecker nc = new NullChecker();

			userId = nc.check(userId, String.class);

			if (!checkUserPermissions(userId, U_SERVICE, U_CLINICIAN, U_ADMIN))
			{
				return l;
			}

			try
			{
				String sql = "select id from carer where id not in (select carer from patient)";
				Object[] data = _session.createSQLQuery(sql).list().toArray();

				FUsers fu = new FUsers(_session);
				for (int i = 0; i < data.length; i++)
				{
					l.add(fu.exportCarer(
							(eu.ehealth.db.db.Carer) _session.load(eu.ehealth.db.db.Carer.class, (Serializable) data[i])));
				}
			}
			catch (Exception e)
			{
				SystemDictionary.logException(e);
			}

			return l;
		}
		catch (Exception ex)
		{
			SystemDictionary.logException(ex);

			return l;
		}
	}
	

}
