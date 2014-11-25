package eu.ehealth;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import org.zkoss.util.resource.Labels;
import org.apache.commons.configuration.Configuration;
import org.apache.commons.configuration.PropertiesConfiguration;
import org.apache.log4j.Level;
import org.apache.log4j.Logger;
import org.apache.log4j.PropertyConfigurator;
import eu.ehealth.security.KeyStoreConfig;
import eu.ehealth.ws_client.StorageComponentImpl;
import eu.ehealth.ws_client.xsd.SystemParameter;


/**
 * Helper class to manage some system parameters and objects
 * 
 * @author Xavi Sarda (Atos Origin)
 */
public class SystemDictionary
{
	
	
	public static Level APPLICATION_DEBUG_LEVEL = Level.DEBUG;
	
	public final static String USERTYPE_ADMIN = "1";
	public final static int USERTYPE_ADMIN_INT = 1;
	public final static String USERTYPE_ADMIN_LBL = "dic.usertype.admin";
	public final static String USERTYPE_CLINICIAN = "2";
	public final static int USERTYPE_CLINICIAN_INT = 2;
	public final static String USERTYPE_CLINICIAN_LBL = "dic.usertype.clinician";
	public final static String USERTYPE_CARER = "3";
	public final static int USERTYPE_CARER_INT = 3;
	public final static String USERTYPE_CARER_LBL = "dic.usertype.carer";
	public final static String USERTYPE_PATIENT = "4";
	public final static int USERTYPE_PATIENT_INT = 4;
	public final static String USERTYPE_PATIENT_LBL = "dic.usertype.patient";

	public final static String TASK_STATUS_PENDING = "1";
	public final static int TASK_STATUS_PENDING_INT = 1;
	public final static String TASK_STATUS_PENDING_LBL = "dic.task.status.pending";
	public final static String TASK_STATUS_CANCELLED = "2";
	public final static int TASK_STATUS_CANCELLED_INT = 2;
	public final static String TASK_STATUS_CANCELLED_LBL = "dic.task.status.cancelled";
	public final static String TASK_STATUS_COMPLETED = "3";
	public final static int TASK_STATUS_COMPLETED_INT = 3;
	public final static String TASK_STATUS_COMPLETED_LBL = "dic.task.status.completed";

	public final static String TASK_TYPE_PATIENTQS = "1";
	public final static int TASK_TYPE_PATIENTQS_INT = 1;
	public final static String TASK_TYPE_PATIENTQS_LBL = "dic.task.type.patientqs";
	public final static String TASK_TYPE_CARERQS = "2";
	public final static int TASK_TYPE_CARERQS_INT = 2;
	public final static String TASK_TYPE_CARERQS_LBL = "dic.task.type.carers";
	public final static String TASK_TYPE_BLOODPRESSURE_MEASUREMENT = "3";
	public final static int TASK_TYPE_BLOODPRESSURE_MEASUREMENT_INT = 3;
	public final static String TASK_TYPE_BLOODPRESSURE_MEASUREMENT_LBL = "dic.task.type.bloodpressure.mes";
	public final static String TASK_TYPE_WEIGHT_MEASUREMENT = "4";
	public final static int TASK_TYPE_WEIGHT_MEASUREMENT_INT = 4;
	public final static String TASK_TYPE_WEIGHT_MEASUREMENT_LBL = "dic.task.type.weight.mes";
	public final static String TASK_TYPE_COGGAME = "5";
	public final static int TASK_TYPE_COGGAME_INT = 5;
	public final static String TASK_TYPE_COGGAME_LBL = "dic.task.type.coggame";
	public final static String TASK_TYPE_ACTMONITOR = "6";
	public final static int TASK_TYPE_ACTMONITOR_INT = 6;
	public final static String TASK_TYPE_ACTMONITOR_LBL = "dic.task.type.activity.mon";
	public final static String TASK_TYPE_EXERCISE = "7";
	public final static int TASK_TYPE_EXERCISE_INT = 7;
	public final static String TASK_TYPE_EXERCISE_LBL = "dic.task.type.exercise";
	public final static String TASK_TYPE_TXT = "8";
	public final static int TASK_TYPE_TXT_INT = 8;
	public final static String TASK_TYPE_TXT_LBL = "dic.task.type.text";

	public final static String GENDER_MALE = "1";
	public final static int GENDER_MALE_INT = 1;
	public final static String GENDER_MALE_LBL = "dic.gender.male";
	public final static String GENDER_FEMALE = "2";
	public final static int GENDER_FEMALE_INT = 2;
	public final static String GENDER_FEMALE_LBL = "dic.gender.female";

	public final static String MARITAL_WIDOW = "1";
	public final static int MARITAL_WIDOW_INT = 1;
	public final static String MARITAL_WIDOW_LBL = "dic.marital.widow";
	public final static String MARITAL_MARRIED = "2";
	public final static int MARITAL_MARRIED_INT = 2;
	public final static String MARITAL_MARRIED_LBL = "dic.marital.married";
	public final static String MARITAL_SINGLE = "3";
	public final static int MARITAL_SINGLE_INT = 3;
	public final static String MARITAL_SINGLE_LBL = "dic.marital.single";
	public final static String MARITAL_DIVORCED = "4";
	public final static int MARITAL_DIVORCED_INT = 4;
	public final static String MARITAL_DIVORCED_LBL = "dic.marital.divorced";

	public final static String LIVING_ALONE = "0";
	public final static int LIVING_ALONE_INT = 0;
	public final static String LIVING_ALONE_LBL = "dic.living.alone";
	public final static String LIVING_SONDAUGHTER = "1";
	public final static int LIVING_SONDAUGHTER_INT = 1;
	public final static String LIVING_SONDAUGHTER_LBL = "dic.living.sd";
	public final static String LIVING_PARTNER = "2";
	public final static int LIVING_PARTNER_INT = 2;
	public final static String LIVING_PARTNER_LBL = "dic.living.partner";
	public final static String LIVING_PARTER_SONDAUGHTER = "3";
	public final static int LIVING_PARTER_SONDAUGHTER_INT = 3;
	public final static String LIVING_PARTER_SONDAUGHTER_LBL = "dic.living.partner.sd";
	public final static String LIVING_PARTER_SONDAUGHTER_SDLAW = "4";
	public final static int LIVING_PARTER_SONDAUGHTER_SDLAW_INT = 4;
	public final static String LIVING_PARTER_SONDAUGHTER_SDLAW_LBL = "dic.living.partner.sdlaw";
	public final static String LIVING_PARTER_SONDAUGHTER_SDLAW_GRANDSON = "5";
	public final static int LIVING_PARTER_SONDAUGHTER_SDLAW_GRANDSON_INT = 5;
	public final static String LIVING_PARTER_SONDAUGHTER_SDLAW_GRANDSON_LBL = "dic.living.partner.sdlaw.gs";

	public final static String WARNING_MANUAL = "1";
	public final static int WARNING_MANUAL_INT = 1;
	public final static String WARNING_MANUAL_LBL = "dic.warning.manual";
	public final static String WARNING_AUTO = "2";
	public final static int WARNING_AUTO_INT = 2;
	public final static String WARNING_AUTO_LBL = "dic.warning.auto";

	public final static String EFFECT_WARNING_STROKE = "1";
	public final static int EFFECT_WARNING_STROKE_INT = 1;
	public final static String EFFECT_WARNING_STROKE_LBL = "dic.warning.effect.stroke";

	public final static String INDICATOR_WARNING_BLODDPRESSURE = "1";
	public final static int INDICATOR_WARNING_BLODDPRESSURE_INT = 1;
	public final static String INDICATOR_WARNING_BLODDPRESSURE_LBL = "dic.warning.indicator.bloodpressure";
	public final static String INDICATOR_WARNING_WEIGHT = "2";
	public final static int INDICATOR_WARNING_WEIGHT_INT = 2;
	public final static String INDICATOR_WARNING_WEIGHT_LBL = "dic.warning.indicator.weight";

	public final static String RISKLEVEL_WARNING_HIGH = "1";
	public final static int RISKLEVEL_WARNING_HIGH_INT = 1;
	public final static String RISKLEVEL_WARNING_HIGH_LBL = "dic.warning.risklevel.high";
	public final static String RISKLEVEL_WARNING_LOW = "2";
	public final static int RISKLEVEL_WARNING_LOW_INT = 2;
	public final static String RISKLEVEL_WARNING_LOW_LBL = "dic.warning.risklevel.low";

	public final static String EMERGENCYLEVEL_WARNING_IMMEDIATE = "1";
	public final static int EMERGENCYLEVEL_WARNING_IMMEDIATE_INT = 1;
	public final static String EMERGENCYLEVEL_WARNING_IMMEDIATE_LBL = "dic.warning.emergencylevel.immediate";
	public final static String EMERGENCYLEVEL_WARNING_ATTENTION = "2";
	public final static int EMERGENCYLEVEL_WARNING_ATTENTION_INT = 2;
	public final static String EMERGENCYLEVEL_WARNING_ATTENTION_LBL = "dic.warning.emergencylevel.attention";

	public final static String MEASUREMENT_BLODDPRESSURE = "1";
	public final static int MEASUREMENT_BLODDPRESSURE_INT = 1;
	public final static String MEASUREMENT_BLODDPRESSURE_LBL = "dic.task.type.bloodpressure.mes";
	public final static String MEASUREMENT_WEIGHT = "2";
	public final static int MEASUREMENT_WEIGHT_INT = 2;
	public final static String MEASUREMENT_WEIGHT_LBL = "dic.task.type.weight.mes";
	public final static String MEASUREMENT_ACTIVITY_MONITOR = "3";
	public final static int MEASUREMENT_ACTIVITY_MONITOR_INT = 3;
	public final static String MEASUREMENT_ACTIVITY_MONITOR_LBL = "dic.task.type.activity.mon";

	public static final String QUESTION_TYPE_ONE_ANSWER = "OneAnswer";
	public static final String QUESTION_TYPE_MANY_ANSWERS = "ManyAnswers";
	public static final String QUESTION_TYPE_FREE_TEXT = "FreeText";

	public static final String COMPARE_LESS = "1";
	public static final String COMPARE_GREAT = "2";
	public static final String COMPARE_EQ = "3";
	public static final String COMPARE_NOTEQ = "4";
	public static final String COMPARE_LIKE = "5";
	public static final String COMPARE_BETWEEN = "7";

	public static final String AETIOLOGY_ALZHEIMER = "1";
	public static final String AETIOLOGY_VASCULAR = "2";
	public static final String AETIOLOGY_MIXED = "3";
	public static final String AETIOLOGY_PARKINSON = "4";
	public static final String AETIOLOGY_OTHERS = "5";

	private static SystemParameter locale = new SystemParameter("en_UK", "English");
	private static SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy");
	private static SimpleDateFormat sdf_long = new SimpleDateFormat("dd-MM-yyyy HH:mm:ss");
	private static Logger logger = null;
	private static StorageComponentImpl proxyCxf = null;
	
	// global properties - 'webgui.properties' file
	public static Configuration CONFIG_PROPERTIES = null;
	
	// global proerties map - values from database
	public static HashMap<String, String> PROPERTIES_HASHMAP;
	// Keys values
	public static final String PROPERTY_WEIGHT_MIN = "WEIGHT_MIN";
	public static final String PROPERTY_WEIGHT_MAX = "WEIGHT_MAX";
	public static final String PROPERTY_BLOOD_SISTOLIC_MIN = "BLOOD_SISTOLIC_MIN";
	public static final String PROPERTY_BLOOD_SISTOLIC_MAX = "BLOOD_SISTOLIC_MAX";
	public static final String PROPERTY_BLOOD_DIASTOLIC_MIN = "BLOOD_DIASTOLIC_MIN";
	public static final String PROPERTY_BLOOD_DIASTOLIC_MAX = "BLOOD_DIASTOLIC_MAX";
	public static final String PROPERTY_LOGIN_ATTEMPTS = "LOGIN_ATTEMPTS";
	
	// EXTERNAL SERVICES TYPES
	public static final String EXT_SERV_EXERCISES = "exercises";
	public static final String EXT_SERV_COGNGAMES = "cognitive games";
	
	// QUESTIONNAIRES
	public static final String QUESTIONNAIRE_PATIENTS = "q_patients";
	public static final String QUESTIONNAIRE_CARERS = "q_carers";
	
	
	/**
	 * Initialization
	 */
	static 
	{
		try 
		{
			webguiLog("INFO", "Initialization ...");
			
			//System.setProperty("https.protocols", "TLSv1");
			//System.setProperty("force.http.jre.executor", "true");
			System.setProperty("jsse.enableSNIExtension", "false");
			
			// WS-SECURITY properties
			webguiLog("INFO", "Getting ws-security properties ...");
			
			CONFIG_PROPERTIES = new PropertiesConfiguration("webgui.properties");
			if ((CONFIG_PROPERTIES == null) || (CONFIG_PROPERTIES.isEmpty())) {
				webguiLog("FATAL", "Error getting ws-security properties");
			}
			else {
				webguiLog("INFO", "ws-security properties loaded");
				try {
					Iterator itr = CONFIG_PROPERTIES.getKeys();
					while(itr.hasNext()) { // CONFIG_PROPERTIES.getKeys()
						String key = (String) itr.next();
						webguiLog("DEBUG", "..." + key + " : " + CONFIG_PROPERTIES.getString(key));
					}
				}
				catch (Exception ex1) { }
			}
		}
		catch (Exception ex) {
			ex.printStackTrace();
		}
		
		// Configure SSL parameters
		webguiLog("INFO", "SSL parameters ...");
		
		try 
		{
			if ((CONFIG_PROPERTIES != null) && (!CONFIG_PROPERTIES.isEmpty())) 
			{
				String isServerSSL = CONFIG_PROPERTIES.getString("isServerSSL");
				if ((isServerSSL != null) && (isServerSSL.equals("true"))) 
			    {
					KeyStoreConfig sec = new KeyStoreConfig();
					sec.configureSSLParameters();
			    }
			}		
		}
		catch (Exception ex) 
		{
			logException(ex);
		}
		
		// Global properties from database
		webguiLog("INFO", "EHealth properties ...");
		
		try 
		{
			PROPERTIES_HASHMAP = new HashMap<String, String>();
			
			StorageComponentImpl sc = SystemDictionary.getSCProxy();
			ArrayList<String[]> l = (ArrayList<String[]>) sc.getEhealthParameters();
			
			for (int i=0, max=l.size(); i<max; i++) {
				PROPERTIES_HASHMAP.put(l.get(i)[0], l.get(i)[1]);
				
				webguiLog("DEBUG", "PROPERTIES_HASHMAP - " + l.get(i)[0] + " : " + l.get(i)[1]);
			}
		}
		catch (Exception ex) 
		{
			logException(ex);
		}
		
		webguiLog("INFO", "SystemDictionary initialized");
	}
	
	
	/**
	 * Initialization
	 */
	public static void init()
	{
		webguiLog("INFO", "SystemDictionary initialized (2)");

		// FIDDLER TODO delete
		/*System.setProperty("http.proxyHost", "127.0.0.1");
	    System.setProperty("https.proxyHost", "127.0.0.1");
	    System.setProperty("http.proxyPort", "8888");
	    System.setProperty("https.proxyPort", "8888");*/
	}


	public static SystemParameter getLocale()
	{
		return locale;
	}
	
	
	public static StorageComponentImpl getSCProxy()
	{
		if (proxyCxf == null)
		{
			proxyCxf = new StorageComponentImpl();
		}
		return proxyCxf;
	}
	


	public static SimpleDateFormat getDateFormatter(boolean withhour)
	{
		if (withhour)
		{
			return sdf_long;
		}
		return sdf;
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
			logger = Logger.getLogger("WebGUI");
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


	/**
	 * Static function which returns the user type label
	 * 
	 * @param dic Numerical id of the user type
	 * @return Localized string with the user type value
	 */
	public static String getUsertypeLabel(String dic)
	{
		int dictn = Integer.parseInt(dic);
		String ret = "error.no";
		switch (dictn)
		{
			case USERTYPE_ADMIN_INT:
				ret = USERTYPE_ADMIN_LBL;
				break;
			case USERTYPE_CLINICIAN_INT:
				ret = USERTYPE_CLINICIAN_LBL;
				break;
			case USERTYPE_CARER_INT:
				ret = USERTYPE_CARER_LBL;
				break;
			case USERTYPE_PATIENT_INT:
				ret = USERTYPE_PATIENT_LBL;
				break;
		}
		return Labels.getLabel(ret);
	}


	/**
	 * Static function which returns the task status label
	 * 
	 * @param dic Numerical id of the task status
	 * @return Localized string with the task status value
	 */
	public static String getTaskStatusLabel(String dic)
	{
		int dictn = Integer.parseInt(dic);
		String ret = "error.no";
		switch (dictn)
		{
			case TASK_STATUS_CANCELLED_INT:
				ret = TASK_STATUS_CANCELLED_LBL;
				break;
			case TASK_STATUS_COMPLETED_INT:
				ret = TASK_STATUS_COMPLETED_LBL;
				break;
			case TASK_STATUS_PENDING_INT:
				ret = TASK_STATUS_PENDING_LBL;
				break;
		}
		return Labels.getLabel(ret);
	}


	/**
	 * Static function which returns the task type label
	 * 
	 * @param dic Numerical id of the task type
	 * @return Localized string with the task type value
	 */
	public static String getTaskTypeLabel(String dic)
	{
		int dictn = Integer.parseInt(dic);
		String ret = "error.no";
		switch (dictn)
		{
			case TASK_TYPE_ACTMONITOR_INT:
				ret = TASK_TYPE_ACTMONITOR_LBL;
				break;
			case TASK_TYPE_BLOODPRESSURE_MEASUREMENT_INT:
				ret = TASK_TYPE_BLOODPRESSURE_MEASUREMENT_LBL;
				break;
			case TASK_TYPE_CARERQS_INT:
				ret = TASK_TYPE_CARERQS_LBL;
				break;
			case TASK_TYPE_COGGAME_INT:
				ret = TASK_TYPE_COGGAME_LBL;
				break;
			case TASK_TYPE_EXERCISE_INT:
				ret = TASK_TYPE_EXERCISE_LBL;
				break;
			case TASK_TYPE_PATIENTQS_INT:
				ret = TASK_TYPE_PATIENTQS_LBL;
				break;
			case TASK_TYPE_WEIGHT_MEASUREMENT_INT:
				ret = TASK_TYPE_WEIGHT_MEASUREMENT_LBL;
				break;
			case TASK_TYPE_TXT_INT:
				ret = TASK_TYPE_TXT_LBL;
		}
		return Labels.getLabel(ret);
	}


	/**
	 * Static function which returns the gender label
	 * 
	 * @param dic Numerical id of the gender
	 * @return Localized string with the gender value
	 */
	public static String getGenderLabel(String dic)
	{
		int dictn = Integer.parseInt(dic);
		String ret = "error.no";
		switch (dictn)
		{
			case GENDER_MALE_INT:
				ret = GENDER_MALE_LBL;
				break;
			case GENDER_FEMALE_INT:
				ret = GENDER_FEMALE_LBL;
				break;
		}
		return Labels.getLabel(ret);
	}


	/**
	 * Static function which returns the marital status label
	 * 
	 * @param dic Numerical id of the marital status
	 * @return Localized string with the marital status value
	 */
	public static String getMaritalStatuspeLabel(String dic)
	{
		int dictn = Integer.parseInt(dic);
		String ret = "error.no";
		switch (dictn)
		{
			case MARITAL_DIVORCED_INT:
				ret = MARITAL_DIVORCED_LBL;
				break;
			case MARITAL_MARRIED_INT:
				ret = MARITAL_MARRIED_LBL;
				break;
			case MARITAL_SINGLE_INT:
				ret = MARITAL_SINGLE_LBL;
				break;
			case MARITAL_WIDOW_INT:
				ret = MARITAL_WIDOW_LBL;
				break;
		}
		return Labels.getLabel(ret);
	}


	/**
	 * Static function which returns the "living with" label
	 * 
	 * @param dic Numerical id of the "living with"
	 * @return Localized string with the "living with" value
	 */
	public static String getLivingWithLabel(String dic)
	{
		int dictn = Integer.parseInt(dic);
		String ret = "error.no";
		switch (dictn)
		{
			case LIVING_ALONE_INT:
				ret = LIVING_ALONE_LBL;
				break;
			case LIVING_PARTER_SONDAUGHTER_INT:
				ret = LIVING_PARTER_SONDAUGHTER_LBL;
				break;
			case LIVING_PARTER_SONDAUGHTER_SDLAW_GRANDSON_INT:
				ret = LIVING_PARTER_SONDAUGHTER_SDLAW_GRANDSON_LBL;
				break;
			case LIVING_PARTER_SONDAUGHTER_SDLAW_INT:
				ret = LIVING_PARTER_SONDAUGHTER_SDLAW_LBL;
				break;
			case LIVING_PARTNER_INT:
				ret = LIVING_PARTNER_LBL;
				break;
			case LIVING_SONDAUGHTER_INT:
				ret = LIVING_SONDAUGHTER_LBL;
				break;
		}
		return Labels.getLabel(ret);
	}


	/**
	 * Static function which returns the warning type label
	 * 
	 * @param dic Numerical id of the warning type
	 * @return Localized string with the warning type value
	 */
	public static String getWarningTypeLabel(String dic)
	{
		int dictn = Integer.parseInt(dic);
		String ret = "error.no";
		switch (dictn)
		{
			case WARNING_AUTO_INT:
				ret = WARNING_AUTO_LBL;
				break;
			case WARNING_MANUAL_INT:
				ret = WARNING_MANUAL_LBL;
				break;
		}
		return Labels.getLabel(ret);
	}


	/**
	 * Static function which returns the warning effect label
	 * 
	 * @param dic Numerical id of the warning effect
	 * @return Localized string with the warning effect value
	 */
	public static String getWarningEffectLabel(String dic)
	{
		int dictn = Integer.parseInt(dic);
		String ret = "error.no";
		switch (dictn)
		{
			case EFFECT_WARNING_STROKE_INT:
				ret = EFFECT_WARNING_STROKE_LBL;
				break;
		}
		return Labels.getLabel(ret);
	}


	/**
	 * Static function which returns the warning indicator label
	 * 
	 * @param dic Numerical id of the warning indicator
	 * @return Localized string with the warning indicator value
	 */
	public static String getWarningIndicatorLabel(String dic)
	{
		int dictn = Integer.parseInt(dic);
		String ret = "error.no";
		switch (dictn)
		{
			case INDICATOR_WARNING_BLODDPRESSURE_INT:
				ret = INDICATOR_WARNING_BLODDPRESSURE_LBL;
				break;
			case INDICATOR_WARNING_WEIGHT_INT:
				ret = INDICATOR_WARNING_WEIGHT_LBL;
				break;
		}
		return Labels.getLabel(ret);
	}


	/**
	 * Static function which returns the emergency level of a warning
	 * 
	 * @param dic Numerical id of the emergency level
	 * @return Localized string with the emergency level value
	 */
	public static String getWarningEmergencyLevelLabel(String dic)
	{
		int dictn = Integer.parseInt(dic);
		String ret = "error.no";
		switch (dictn)
		{
			case EMERGENCYLEVEL_WARNING_ATTENTION_INT:
				ret = EMERGENCYLEVEL_WARNING_ATTENTION_LBL;
				break;
			case EMERGENCYLEVEL_WARNING_IMMEDIATE_INT:
				ret = EMERGENCYLEVEL_WARNING_IMMEDIATE_LBL;
				break;
		}
		return Labels.getLabel(ret);
	}


	/**
	 * Static function which returns the measurement type label
	 * 
	 * @param dic Numerical id of the measurement type
	 * @return Localized string with the measurement type value
	 */
	public static String getMeasurementTypeLabel(String dic)
	{
		int dictn = Integer.parseInt(dic);
		String ret = "error.no";
		switch (dictn)
		{
			case MEASUREMENT_BLODDPRESSURE_INT:
				ret = MEASUREMENT_BLODDPRESSURE_LBL;
				break;
			case MEASUREMENT_WEIGHT_INT:
				ret = MEASUREMENT_WEIGHT_LBL;
				break;
		}
		return Labels.getLabel(ret);
	}


	/**
	 * Static function which returns the risk level label
	 * 
	 * @param dic Numerical id of the risk level
	 * @return Localized string with the risk level value
	 */
	public static String getWarningRiskLevel(String dic)
	{
		int dictn = Integer.parseInt(dic);
		String ret = "error.no";
		switch (dictn)
		{
			case RISKLEVEL_WARNING_HIGH_INT:
				ret = RISKLEVEL_WARNING_HIGH_LBL;
				break;
			case RISKLEVEL_WARNING_LOW_INT:
				ret = RISKLEVEL_WARNING_LOW_LBL;
				break;
		}
		return Labels.getLabel(ret);
	}


}
