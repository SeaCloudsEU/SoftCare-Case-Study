package eu.ehealth.db.wservices.common;

import java.util.ArrayList;
import java.util.List;
import org.apache.log4j.Level;
import org.hibernate.Session;
import eu.ehealth.SystemDictionary;
import eu.ehealth.db.DbStorageComponent;
import eu.ehealth.db.xsd.SystemParameter;
import eu.ehealth.util.StorageComponentUtilities;


/**
 * 
 * 
 * @author a572832
 * @date 19/03/2014.
 *
 */
public class ListOfSupportedLocales extends DbStorageComponent<List<SystemParameter>, Object>
{

	
	/**
	 * 
	 * @param session
	 */
	public ListOfSupportedLocales(Session session)
	{
		super(session);
	}

	
	@Override
	protected List<SystemParameter> dbStorageFunction(ArrayList<Object> lo)
	{
		List<SystemParameter> lres = new ArrayList<SystemParameter>();
		try
		{
			// DEBUG - TRACE
			if (SystemDictionary.APPLICATION_DEBUG_LEVEL == Level.DEBUG)
				StorageComponentUtilities.trace(Thread.currentThread().getStackTrace());

			try
			{
				@SuppressWarnings("unchecked")
				Object[] array = _session.createQuery("from Locale").list().toArray(new eu.ehealth.db.db.Locale[0]);
				eu.ehealth.db.db.Locale[] locale = (eu.ehealth.db.db.Locale[]) array;
				for (int i = 0; i < locale.length; i++)
				{
					SystemParameter l = new SystemParameter();
					l.setCode(locale[i].getId().toString());
					l.setDescription(locale[i].getName());

					lres.add(l);
				}

			}
			catch (Exception e)
			{
				SystemDictionary.logException(e);
			}

			return lres;
		}
		catch (Exception ex)
		{
			SystemDictionary.logException(ex);

			return lres;
		}
	}
	

}
