package eu.ehealth.db;

import org.apache.commons.configuration.PropertiesConfiguration;
import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;
import eu.ehealth.StorageComponentMain;
import eu.ehealth.security.DataBasePasswords;


/**
 * 
 * @author a572832
 * 
 */
public class HibernateUtil
{


	/**
	 * SessionFactory static object
	 */
	private static SessionFactory sessionFactory;
	
	private static int counter = 0;
	
	
	/**
	 * 
	 * @return
	 */
	private static void buildSessionFactory()
	{
		try
		{
			counter++;
			StorageComponentMain.scLog("DEBUG", HibernateUtil.class.getName() + " : sessionfactory status : creating new [" + counter + "] sessionfactory [env / sys properties: " + StorageComponentMain.USE_SYSPROPS + "]...");
			
			// Create the SessionFactory from hibernate.cfg.xml
			Configuration configuration = new Configuration().configure();
						
			// get values from environment / system properties
			if (StorageComponentMain.USE_SYSPROPS)
			{
				PropertiesConfiguration props = new PropertiesConfiguration("ws.properties");
				if ((props == null) || (props.isEmpty())) {
					StorageComponentMain.scLog("FATAL", HibernateUtil.class.getName() + " : Error getting application properties");
					throw new ExceptionInInitializerError(new Throwable());
				}
				
				String connurl = props.getString("database.sysproperty.connurl.name", "");
				String user = props.getString("database.sysproperty.user.name", "");
				String passwd = props.getString("database.sysproperty.passwd.name", "");
				
				String connurlValue = System.getProperty(connurl);
				if ((connurlValue == null) || (connurlValue.isEmpty()))
					connurlValue = System.getenv(connurl);
				
				String userValue = System.getProperty(user);
				if ((userValue == null) || (userValue.isEmpty()))
					userValue = System.getenv(user);
				
				String passwdValue = System.getProperty(passwd);
				if ((passwdValue == null) || (passwdValue.isEmpty()))
					passwdValue = System.getenv(passwd);
				
				StorageComponentMain.scLog("DEBUG", HibernateUtil.class.getName() + " : " + connurlValue + " / " + userValue + " / " + passwdValue);
				
				configuration.setProperty("hibernate.connection.url", connurlValue);
				configuration.setProperty("hibernate.connection.username", userValue);
				configuration.setProperty("hibernate.connection.password", passwdValue);
			}
			// get values from configuration file / code
			else
			{
				// decrypt user / passwd values
				if (StorageComponentMain.HIBERNATE_ENCRYPTION) 
				{
					String user = DataBasePasswords.decryptHibernateEncryptions(configuration.getProperty("hibernate.connection.username"));
					configuration.setProperty("hibernate.connection.username", user);   
					
					String pass = DataBasePasswords.decryptHibernateEncryptions(configuration.getProperty("hibernate.connection.password"));
					configuration.setProperty("hibernate.connection.password", pass);   
				}
			}

			// Database with SSL
			// ?verifyServerCertificate=false&amp;useSSL=true&amp;requireSSL=true
			if (StorageComponentMain.DATABASE_WITH_SSL) 
			{
				StorageComponentMain.scLog("DEBUG", HibernateUtil.class.getName() + " : sessionfactory status : DATABASE_WITH_SSL : setting 'hibernate.connection.url' ...");
				
				String url = configuration.getProperty("hibernate.connection.url");
				//url += "&verifyServerCertificate=false&useSSL=true&requireSSL=true";
				url += "?useSSL=true&requireSSL=true";
				
				configuration.setProperty("hibernate.connection.url", url);  
			}
			
			// DEBUG
			String url = configuration.getProperty("hibernate.connection.url");
			String username = configuration.getProperty("hibernate.connection.username");
			String password = configuration.getProperty("hibernate.connection.password");
			StorageComponentMain.scLog("DEBUG", HibernateUtil.class.getName() + " : sessionfactory status : db URL : " + url + " / " + username + " / " + password);

			// create new sessionFactory
			ServiceRegistry serviceRegistry = new StandardServiceRegistryBuilder().applySettings(configuration.getProperties()).build();
		    sessionFactory = configuration.buildSessionFactory(serviceRegistry);
		}
		catch (Exception ex)
		{
			StorageComponentMain.scLog("ERROR", HibernateUtil.class.getName() + " : Initial SessionFactory creation failed : " + ex.getMessage());
			StorageComponentMain.logException(ex);
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
