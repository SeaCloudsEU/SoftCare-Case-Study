package eu.ehealth.db.wservices.tasks;

import java.util.ArrayList;
import java.util.List;
import org.apache.log4j.Level;
import org.hibernate.Session;
import eu.ehealth.SystemDictionary;
import eu.ehealth.db.DbStorageComponent;
import eu.ehealth.db.wservices.tasks.dbfunctions.FTasks;
import eu.ehealth.db.xsd.SystemParameter;
import eu.ehealth.util.StorageComponentUtilities;


/**
 * 
 * 
 * @author a572832
 * @date 19/03/2014.
 *
 */
public class ListOfPossibleTasks extends DbStorageComponent<List<SystemParameter>, Integer>
{

	
	/**
	 * 
	 * @param session
	 */
	public ListOfPossibleTasks(Session session)
	{
		super(session);
	}

	
	@Override
	protected List<SystemParameter> dbStorageFunction(ArrayList<Integer> lo)
	{
		List<SystemParameter> l = new ArrayList<SystemParameter>();
		
		try
		{
			// DEBUG - TRACE
			if (SystemDictionary.APPLICATION_DEBUG_LEVEL == Level.DEBUG)
				StorageComponentUtilities.trace(Thread.currentThread().getStackTrace());

			FTasks ft = new FTasks();
			for (Integer i = 1; i < ft.getTaskTypesCount() + 1; i++)
			{
				SystemParameter pt = new SystemParameter();
				pt.setCode(i.toString());

				l.add(pt);
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
