package eu.ehealth;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import org.apache.commons.configuration.PropertiesConfiguration;
import org.apache.log4j.Level;
import org.apache.log4j.Logger;
import org.apache.log4j.PropertyConfigurator;
import eu.ehealth.db.DbQueries;
import eu.ehealth.security.DataBasePasswords;
import eu.ehealth.security.KeyStoreConfig;
import eu.ehealth.security.tasks.CheckUsers;


/**
 *
 * 
 * @author 
 */
public class SystemDictionary
{
	
	
	// E-Health Web Services configuration variables
	public static Level APPLICATION_DEBUG_LEVEL = Level.DEBUG;	// DEBUG level output : DEBUG, INFO ...
	public static boolean ACTIVATE_INTERCEPTOR_DB = true;		// store SOAP messages in DB - for DEBUG purposes
	public static boolean ACTIVATE_OUT_INTERCEPTOR_DB = false;	// store SOAP messages in DB - for DEBUG purposes
	public static DataBase DATABASE = DataBase.MySQL;			// DataBase used
	public static boolean DATABASE_ENCRYPTION = false;			// Encrypt data with JASYPT
	public static boolean HIBERNATE_ENCRYPTION = false;			// Encrypt hibernate properties with JASYPT
	public static boolean DATABASE_WITH_SSL = false;			// SSL Communication with Database 
	public static String RULES_FILE = "rules.xml";				// Rules file
	
	// system initialized
	private static boolean _initialized = false;
	
	public static enum DataBase {
		MySQL, OTHER
	}

	private static Logger logger = null;

	
	/**
	 * Initialization
	 */
	static
	{
		webguiLog("INFO", "SystemDictionary : retrieving values ...");

		// PROPERTIES FILE ////////////////////////////////////////////////////
		try 
		{
			PropertiesConfiguration props = new PropertiesConfiguration("ws.properties");
			
			// RULES_FILE
			String rulesFileCfg = props.getString("rules");
			if ((rulesFileCfg != null) && (rulesFileCfg.trim().length() > 0)) {
				RULES_FILE = rulesFileCfg;
				webguiLog("INFO", "RULES_FILE ... " + rulesFileCfg);
			}
			else 
			{
				webguiLog("INFO", "RULES_FILE ... DEFAULT");
			}
			
			// ENCRYPTED PASSWORDS in hibernate.cfg.xml
			String encryptedHibernateCfg = props.getString("encryptedHibernateCfg");
			if ((encryptedHibernateCfg != null) && (encryptedHibernateCfg.equalsIgnoreCase("true"))) {
				HIBERNATE_ENCRYPTION = true;
				webguiLog("INFO", "HIBERNATE_ENCRYPTION ... true");
			}
			else 
			{
				webguiLog("INFO", "HIBERNATE_ENCRYPTION ... false");
			}
			
			// DATABASE_ENCRYPTION
			String encryptionEnabled = props.getString("encryptdb");
			if ((encryptionEnabled != null) && (encryptionEnabled.equalsIgnoreCase("true"))) {
				DATABASE_ENCRYPTION = true;
				DataBasePasswords.registerEncryptionMethods();
				webguiLog("INFO", "DATABASE_ENCRYPTION ... true");
			}
			else {
				webguiLog("INFO", "DATABASE_ENCRYPTION ... false");
			}

			// DATABASE_WITH_SSL
			String dbSslEnabled = props.getString("dbSslEnabled");
			if ((dbSslEnabled != null) && (dbSslEnabled.equalsIgnoreCase("true"))) {
				KeyStoreConfig keyCfg = new KeyStoreConfig();
				if (keyCfg.configureSSLParameters(props)) 
				{
					DATABASE_WITH_SSL = true;
					webguiLog("INFO", "DATABASE_WITH_SSL ... true");
				}
			}
			else 
			{
				webguiLog("INFO", "DATABASE_WITH_SSL ... false");
			}
		}
		catch (Exception ex) {
			logException(ex);
		}
		
		// PERIODIC TASKS /////////////////////////////////////////////////////
		try 
		{
			ScheduledExecutorService scheduler = Executors.newScheduledThreadPool(1);
			webguiLog("INFO", "Starting CheckUsers task ...");
			/*
			 * Creates and executes a periodic action that becomes enabled first
		     * after the given initial delay, and subsequently with the given
		     * period; that is executions will commence after
			 */
			GregorianCalendar gnow = (GregorianCalendar) GregorianCalendar.getInstance();
			int actualHour = gnow.get(Calendar.HOUR_OF_DAY);
			
			int delay = 0;	// between 24h and 4h
			if (actualHour > 4) {
				// between 5h and 24h
				delay = 24 - actualHour + 2;	// try to set the delay at 2h
			}
			
			scheduler.scheduleAtFixedRate(new CheckUsers(), delay, 1, TimeUnit.HOURS);
			webguiLog("INFO", "CheckUsers task initialized");
			
		}
		catch (Exception ex) {
			logException(ex);
		}
		
		webguiLog("INFO", "SystemDictionary initialized");
		
		/*try {
			SecretKey key = new SecretKey();
	        properties.setEncryptionKey(key);
	        properties.setEncryptionSymAlgorithm("http://www.w3.org/2001/04/xmlenc#tripledes-cbc");
		}
		catch (Exception ex) {
			logException(ex);
		}*/
		
		/*System.setProperty("http.proxyHost", "127.0.0.1");
	    System.setProperty("https.proxyHost", "127.0.0.1");
	    System.setProperty("http.proxyPort", "8888");
	    System.setProperty("https.proxyPort", "8888");*/
	}
	
	
	/**
	 * 
	 */
	public static void initialize() {
		if (!_initialized) {
			try
			{
				DbQueries db = new DbQueries();
				ArrayList<String[]> roles = (ArrayList<String[]>) db.getEhealthRoles();
				Globals.addValuesEHEALTH_PARAMETERS(roles);
				
				ArrayList<String[]> params = (ArrayList<String[]>) db.getEhealthParameters();
				Globals.addValuesEHEALTH_PARAMETERS(params);
				
				webguiLog("INFO", "EHealth parameters retrieved");
			}
			catch (Exception e)
			{
				SystemDictionary.logException(e);
			}
		}
		_initialized = true;
	}


	/**
	 * Static method which allows the whole system to log messages without
	 * managing log4java objects
	 * 
	 * @param type Log level such as "DEBUG", "INFO", ...
	 * @param message String containing log message
	 */
	public static void webguiLog(String type, String message)
	{
		if (logger == null)
		{
			logger = Logger.getLogger("WSERVICES");
			PropertyConfigurator.configure(SystemDictionary.class.getClassLoader().getResource("log4j.properties"));
			logger.setLevel(APPLICATION_DEBUG_LEVEL);
		}
		if (type.equals("INFO"))
		{
			logger.info(message);
		}
		else if (type.equals("DEBUG"))
		{
			logger.debug(message);
		}
		else if (type.equals("WARN"))
		{
			logger.warn(message);
		}
		else if (type.equals("ERROR"))
		{
			logger.error(message);
		}
		else if (type.equals("FATAL"))
		{
			logger.fatal(message);
		}
		else if (type.equals("TRACE"))
		{
			logger.trace(message);
		}
	}
	
	
	/**
     * 
     * @param ex
     */
	public static void logException(Exception ex) 
    {
		logger.error(ex.getMessage(), ex);
    }


}
