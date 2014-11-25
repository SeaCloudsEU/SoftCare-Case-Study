package eu.ehealth.db.db;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import eu.ehealth.SystemDictionary;
import eu.ehealth.security.DataBasePasswords;


/**
 * 
 * @author a572832
 * 
 */
public class HibernateUtil
{


	private static final SessionFactory sessionFactory = buildSessionFactory();
	
	
	/**
	 * 
	 */
	private HibernateUtil() { }


	/**
	 * 
	 * @return
	 */
	private static SessionFactory buildSessionFactory()
	{
		try
		{
			SystemDictionary.webguiLog("DEBUG", ".......................................................");
			SystemDictionary.webguiLog("DEBUG", "sessionfactory status : creating new sessionfactory ...");
			
			// Create the SessionFactory from hibernate.cfg.xml
			Configuration configuration = new Configuration().configure();
			if (SystemDictionary.HIBERNATE_ENCRYPTION) 
			{
				String user = DataBasePasswords.decryptHibernateEncryptions(configuration.getProperty("hibernate.connection.username"));
				configuration.setProperty("hibernate.connection.username", user);   
				
				String pass = DataBasePasswords.decryptHibernateEncryptions(configuration.getProperty("hibernate.connection.password"));
				configuration.setProperty("hibernate.connection.password", pass);   
			}
			
			// ?verifyServerCertificate=false&amp;useSSL=true&amp;requireSSL=true
			if (SystemDictionary.DATABASE_WITH_SSL) 
			{
				SystemDictionary.webguiLog("DEBUG", "sessionfactory status : setting 'hibernate.connection.url' ...");
				
				String url = configuration.getProperty("hibernate.connection.url");
				//url += "&verifyServerCertificate=false&useSSL=true&requireSSL=true";
				url += "?useSSL=true&requireSSL=true";
				
				configuration.setProperty("hibernate.connection.url", url);  
			}
			
			String url = configuration.getProperty("hibernate.connection.url");
			SystemDictionary.webguiLog("DEBUG", "sessionfactory status : db URL : " + url);

			return configuration.buildSessionFactory();
		}
		catch (Throwable ex)
		{
			SystemDictionary.webguiLog("ERROR", "Initial SessionFactory creation failed : " + ex.getLocalizedMessage().toString());
			throw new ExceptionInInitializerError(ex);
		}
	}


	/**
	 * 
	 * @return
	 */
	public static SessionFactory getSessionFactory()
	{
		if (sessionFactory == null)
			buildSessionFactory();
		
		return sessionFactory;
	}
	
		
}
