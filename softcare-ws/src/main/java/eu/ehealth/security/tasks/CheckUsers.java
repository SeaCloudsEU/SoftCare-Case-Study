package eu.ehealth.security.tasks;

import java.util.TimerTask;
import eu.ehealth.SystemDictionary;
import eu.ehealth.db.DbQueries;
import eu.ehealth.db.xsd.OperationResult;


/**
 * 
 * 
 * @author a572832
 * @date 19/03/2014.
 *
 */
public class CheckUsers extends TimerTask
{

	
	@Override
	public void run()
	{
		try {
			DbQueries db = new DbQueries();
			OperationResult res = db.checkUsersDbTask();
			
			SystemDictionary.webguiLog("INFO", "Task 'CheckUsers' executed");
		}
		catch (Exception ex) {
			SystemDictionary.logException(ex);
		}
	}
	

}
