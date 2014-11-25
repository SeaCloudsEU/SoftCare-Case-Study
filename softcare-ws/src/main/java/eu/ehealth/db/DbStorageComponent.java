package eu.ehealth.db;

import java.util.ArrayList;
import org.hibernate.Session;
import org.hibernate.TransactionException;
import eu.ehealth.SystemDictionary;
import eu.ehealth.db.db.HibernateUtil;


/**
 * 
 * @author a572832
 *
 * @param <R> Response type of dbStorageFunction method 
 * @param <P> Parameter ArrayList type of dbStorageFunction method 
 */
public abstract class DbStorageComponent<R, P>
{
	
	
	/**
	 * Instance of the session
	 */
	protected Session _session;
	
	/**
	 * Constant for the Carer type
	 */
	public final static int U_CARER = 3;
	/**
	 * Constant for the Patient type
	 */
	public final static int U_PATIENT = 4;
	/**
	 * Constant for the Clinician type
	 */
	public final static int U_CLINICIAN = 2;
	/**
	 * Constant for the Admin type
	 */
	public final static int U_ADMIN = 1;
	/**
	 * Constant for the Service type
	 */
	public final static int U_SERVICE = 5;
	
	
	/**
	 * Constructor
	 * @param session
	 * @param dbHelper
	 */
	public DbStorageComponent(Session session)
	{
		_session = session;
	}
	
	
	/**
	 * Executes database operations
	 * @param lo
	 * @return
	 */
	public R execute(ArrayList<P> lo) {
		init();
		try 
		{
			return dbStorageFunction(lo);
		}
		finally 
		{
			end();
		}
	}

	
	/**
	 * 
	 * @param lo
	 * @return
	 */
	protected abstract R dbStorageFunction(ArrayList<P> lo);
	
	
	/**
	 * Inits session
	 */
	private void init()
	{
		SystemDictionary.webguiLog("DEBUG", "DbStorageComponent -- init()");
		try
		{
			if (!_session.isConnected())
			{
				_session = HibernateUtil.getSessionFactory().openSession();
			}
		}
		catch (Exception ex)
		{
			SystemDictionary.logException(ex);
		}
	}


	/**
	 * Flush & close session
	 */
	private void end()
	{
		SystemDictionary.webguiLog("DEBUG", "DbStorageComponent -- end()");
		try
		{
			_session.flush();
			_session.close();
		}
		catch (Exception ex)
		{
			SystemDictionary.logException(ex);
			try {
				_session.close();
			} catch (Exception ex1) {}
		}
	}
	
	
	
	/**
	 * Help functions for printing methods name.
	 * 
	 * @param e
	 */
	protected void trace(StackTraceElement e[])
	{
		boolean doNext = false;
		for (StackTraceElement s : e)
		{
			if (doNext)
			{
				SystemDictionary.webguiLog("DEBUG", "METHOD : " + s.getMethodName());
				return;
			}
			doNext = s.getMethodName().equals("getStackTrace");
		}
	}
	
	
	/**
	 * 
	 * @param userId
	 * @param userType
	 * @return
	 */
	protected boolean checkUserPermissions(String userId, int... userTypes)
	{
		if (userId == null || userId == "") {
			SystemDictionary.webguiLog("DEBUG", "checkUserPermissions : userId == null ");
			return false;
		}
		
		try
		{
			String sql = "";
			
			if(userTypes.length > 1) 
			{
				String typeWHEREClause = "AND (";
				for (int i=0, max=userTypes.length; i<max; i++) {
					if (i == 0) {
						typeWHEREClause += "type = '" + userTypes[i] + "' ";
					}
					else {
						typeWHEREClause += "OR type = '" + userTypes[i] + "' ";
					}
				}
				typeWHEREClause += ")";
				
				sql = "SELECT * FROM aladdinuser WHERE id = '" + userId + "' " + typeWHEREClause;
			}
			else if(userTypes.length == 1) 
			{
				sql = "SELECT * FROM aladdinuser WHERE id = '" + userId + "' AND type = '" + userTypes[0] + "'";
			}
			
			SystemDictionary.webguiLog("DEBUG", "checkUserPermissions : sql : " + sql);

			int size = _session.createSQLQuery(sql).list().size();
			return (size > 0);
		}
		catch (Exception e)
		{
			SystemDictionary.logException(e);
			return false;
		}
	}

	
	/**
	 * 
	 */
	protected void rollbackSession()  
	{
		try
		{
			SystemDictionary.webguiLog("INFO", "Calling rollbackSession method");
			
			if (_session.getTransaction().isActive()) {
				_session.getTransaction().rollback();
				SystemDictionary.webguiLog("INFO", "RollbackSession made");
			}
		}
		catch (TransactionException e2) { 
			SystemDictionary.logException(e2);
		}
	}
	
	
}
