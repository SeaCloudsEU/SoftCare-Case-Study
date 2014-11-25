package eu.ehealth.db.wservices.authentication;

import java.util.ArrayList;
import org.apache.log4j.Level;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import eu.ehealth.Globals;
import eu.ehealth.StorageComponentImpl;
import eu.ehealth.SystemDictionary;
import eu.ehealth.db.DbStorageComponent;
import eu.ehealth.db.xsd.OperationResult;
import eu.ehealth.security.DataBasePasswords;
import eu.ehealth.util.NullChecker;
import eu.ehealth.util.StorageComponentUtilities;


/**
 * 
 * @author a572832
 *
 */
public class ChangePassword extends DbStorageComponent<OperationResult, String>
{

	
	/**
	 * 
	 * @param session
	 */
	public ChangePassword(Session session)
	{
		super(session);
	}

	
	@Override
	protected OperationResult dbStorageFunction(ArrayList<String> lo)
	{
		try
		{
			String userId = lo.get(0);
			String password = lo.get(1); 
			String reqId = lo.get(2);
			
			// DEBUG - TRACE
			if (SystemDictionary.APPLICATION_DEBUG_LEVEL == Level.DEBUG)
				StorageComponentUtilities.trace(Thread.currentThread().getStackTrace());			
			
			OperationResult res = new OperationResult();

			NullChecker nc = new NullChecker();

			userId = nc.check(userId, String.class);
			password = nc.check(password, String.class);

			try
			{
				// set password value
				if (SystemDictionary.DATABASE_ENCRYPTION) 
				{
					// encrypted database
					password = DataBasePasswords.getPooledEncryptedPsswd(password);
				}
				
				StorageComponentUtilities.checkIP();

				Integer id = new Integer(userId);

				_session.beginTransaction();
				_session.createSQLQuery("UPDATE aladdinuser SET password = '" + password + "' WHERE id = '" + id.toString() + "'").executeUpdate();

				eu.ehealth.db.db.AladdinUser u = (eu.ehealth.db.db.AladdinUser) _session.load(eu.ehealth.db.db.AladdinUser.class, id);

				String url = StorageComponentImpl.forumSC + "?action=password&password=" + password + "&username=" + u.getUsername();

				SystemDictionary.webguiLog("DEBUG", url);

				StorageComponentUtilities.getURLChar(url);

				_session.getTransaction().commit();

				// set OperationResult values
				res = Globals.getOpResult("" + id.toString(), "");
			}
			catch (HibernateException e)
			{
				rollbackSession();

				SystemDictionary.logException(e);

				// set OperationResult values
				res = Globals.getOpResult(Globals.ResponseCode.DATABASE_ERROR_1.getCode(), " : " + e.toString());
			}
			catch (Exception e)
			{
				SystemDictionary.logException(e);
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
