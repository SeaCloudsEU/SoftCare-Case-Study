package eu.ehealth.db.wservices.externalservices;

import java.util.ArrayList;
import java.util.List;
import org.apache.log4j.Level;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import eu.ehealth.SystemDictionary;
import eu.ehealth.db.DbStorageComponent;
import eu.ehealth.db.xsd.ExternalService;
import eu.ehealth.util.StorageComponentUtilities;


/**
 * 
 * 
 * @author a572832
 * @date 19/03/2014.
 *
 */
public class GetAllExternalServices extends DbStorageComponent<List<ExternalService>, String>
{

	
	/**
	 * 
	 * @param session
	 */
	public GetAllExternalServices(Session session)
	{
		super(session);
	}

	
	@Override
	protected List<ExternalService> dbStorageFunction(ArrayList<String> lo)
	{
		List<ExternalService> l = new ArrayList<ExternalService>();
		try
		{
			String userId = (String) lo.get(0);
			
			// DEBUG - TRACE
			if (SystemDictionary.APPLICATION_DEBUG_LEVEL == Level.DEBUG)
				StorageComponentUtilities.trace(Thread.currentThread().getStackTrace());

			try
			{
				Object[] esl = _session.createQuery("from ExternalService").list().toArray();
				for (int i = 0; i < esl.length; i++)
				{
					eu.ehealth.db.db.ExternalService es = (eu.ehealth.db.db.ExternalService) esl[i];
					ExternalService re = new ExternalService();
					re.setAddress(es.getAddress());
					re.setDescription(es.getDescription());
					re.setID(es.getId().toString());
					re.setType(es.getType());

					l.add(re);
				}
			}
			catch (HibernateException e)
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
