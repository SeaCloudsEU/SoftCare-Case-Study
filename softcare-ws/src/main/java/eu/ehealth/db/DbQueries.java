package eu.ehealth.db;

import java.util.ArrayList;
import java.util.List;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.Transaction;
import eu.ehealth.Globals;
import eu.ehealth.SystemDictionary;
import eu.ehealth.db.db.HibernateUtil;
import eu.ehealth.db.xsd.OperationResult;


/**
 * 
 * @author a572832
 *
 */
public class DbQueries
{
	
	
	/**
	 * Instance of the session
	 */
	private Session session;
	
	
	/**
	 * Default constructor
	 */
	public DbQueries()
	{
		session = HibernateUtil.getSessionFactory().openSession();
	}
	
	
	/**
	 * 
	 * @param msg
	 * @param inOut
	 */
	public void storeSOAPMsg(String msg, String inOut)
	{
		if ((msg == null) || (msg.trim().length() == 0)) 
		{
			return;
		}
		
		_init();
		try
		{
			try
			{
				String sql = "INSERT INTO logstmp (logValue, in_Out) VALUES (:logValue, :inOut)";
				Query q = session.createSQLQuery(sql);
				q.setParameter("logValue", msg);
				q.setParameter("inOut", inOut);
				
				Transaction t = session.getTransaction();
				t.begin();
				
				if (q.executeUpdate() == 1)
				{
					SystemDictionary.webguiLog("DEBUG", "storeSOAPMsg : SOAP Message added to database");
				}
				else
				{
					SystemDictionary.webguiLog("DEBUG", "storeSOAPMsg : ERROR ");
				}
				
				t.commit();
			}
			catch (HibernateException e)
			{
				SystemDictionary.logException(e);

			}
			catch (Exception e)
			{
				SystemDictionary.logException(e);
			}
		}
		finally
		{
			_finally();
		}
	}
	
	
	/**
	 * 
	 * @param patientId
	 * @return
	 */
	public ArrayList<InternetAddress> getClinicianEmail(String patientId)
	{
		_init();
		try
		{
			ArrayList<InternetAddress> lEmails = new ArrayList<InternetAddress>(1);
			
			Integer id = new Integer(patientId);
			eu.ehealth.db.db.Patient patient = (eu.ehealth.db.db.Patient) session.load(eu.ehealth.db.db.Patient.class, id);

			Object[] cm = patient.getM_Clinician().getM_PersonData().getCommunications().toArray();
	
			SystemDictionary.webguiLog("DEBUG", "getClinicianEmail : cm.length " + cm.length);
			
			for (int i = 0; i < cm.length; i++)
			{
				String com_type = ((eu.ehealth.db.db.Communication) cm[i]).getType();
				String com_value = ((eu.ehealth.db.db.Communication) cm[i]).getValue();

				SystemDictionary.webguiLog("DEBUG", "getClinicianEmail : Communication : " + com_type + " / " + com_value);  
				
				if (com_type.endsWith(Globals.CommunicationType.EMAIL.toString())) 
				{
					try
					{
						lEmails.add(new InternetAddress(com_value));
					}
					catch (AddressException e)
					{
						SystemDictionary.webguiLog("DEBUG", "AddressException : " + e.getMessage());
					}
				}
			}

			return lEmails;
		}
		catch (HibernateException e)
		{
			SystemDictionary.webguiLog("DEBUG", "ERROR : " + e.getMessage());
			return null;
		}
		finally
		{
			_finally();
		}
	}
	
	
	/**
	 * 
	 * @return
	 */
	public List<String[]> getEhealthRoles()
	{
		_init();
		try
		{
			ArrayList<String[]> lRes = new ArrayList<String[]>();

			String sql = "SELECT name, id FROM ehealthroles";
			SQLQuery q = session.createSQLQuery(sql);
			
			List<Object> result = q.list();
			if (result.size() > 0)
			{
				for (int i=0, max=result.size(); i<max; i++)
				{
					Object[] obj = (Object[])result.get(i);
					String[] param = new String[2];
					
					param[0] = (String) obj[0];
					param[1] = ((Integer) obj[1]).toString();
					
					lRes.add(param);
				}
				
				return lRes;
			}
			
			return null;
		}
		catch (Exception ex)
		{
			SystemDictionary.logException(ex);

			return null;
		}
		finally
		{
			_finally();
		}
	}
	
	
	/**
	 * 
	 * @return
	 */
	public List<String[]> getEhealthParameters()
	{
		_init();
		try
		{
			ArrayList<String[]> lRes = new ArrayList<String[]>();

			String sql = "SELECT name, value FROM ehealthparameters";
			SQLQuery q = session.createSQLQuery(sql);
			
			List<Object> result = q.list();
			if (result.size() > 0)
			{
				for (int i=0, max=result.size(); i<max; i++)
				{
					Object[] obj = (Object[])result.get(i);
					String[] param = new String[2];
					
					param[0] = (String) obj[0];
					param[1] = (String) obj[1];
					
					lRes.add(param);
				}
				
				return lRes;
			}
			
			return null;
		}
		catch (Exception ex)
		{
			SystemDictionary.logException(ex);

			return null;
		}
		finally
		{
			_finally();
		}
	}
	
	
	/**
	 * 
	 * @return
	 */
	public OperationResult checkUsersDbTask()
	{
		_init();
		try
		{
			OperationResult res = new OperationResult();
			
			try
			{
				String sql = "INSERT INTO logstmp (logValue, in_Out) VALUES (:logValue, :inOut)";
				Query q = session.createSQLQuery(sql);
				
				Transaction t = session.getTransaction();
				t.begin();
				
				if (q.executeUpdate() == 1)
				{
					SystemDictionary.webguiLog("DEBUG", "storeSOAPMsg : SOAP Message added to database");
				}
				else
				{
					SystemDictionary.webguiLog("DEBUG", "storeSOAPMsg : ERROR ");
				}
				
				t.commit();
			}
			catch (HibernateException e)
			{
				SystemDictionary.logException(e);

			}
			catch (Exception e)
			{
				SystemDictionary.logException(e);
			}
			
			return res;
		}
		finally
		{
			_finally();
		}
	}
	
	
	/**
	 * 
	 */
	private void _init()
	{
		try
		{
			if (!session.isConnected())
			{
				session = HibernateUtil.getSessionFactory().openSession();
			}
		}
		catch (Exception ex)
		{
			SystemDictionary.webguiLog("ERROR", "session status : EXCEPTION : " + ex.getMessage());
			SystemDictionary.logException(ex);
		}
	}
	
	
	/**
	 * Flush & close session
	 */
	private void _finally()
	{
		try
		{
			session.flush();
			session.close();
		}
		catch (Exception ex)
		{
			SystemDictionary.logException(ex);
			try {
				session.close();
			} catch (Exception ex1) {}
		}
	}
	

}
