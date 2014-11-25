package eu.ehealth.util;

import java.io.InputStream;
import java.net.URL;
import java.net.URLConnection;
import eu.ehealth.SystemDictionary;


/**
 * 
 * @author a572832
 *
 */
public class StorageComponentUtilities
{

	
	/**
	 * Check access for client IP
	 * 
	 * @throws Exception if access is denied
	 */
	public static void checkIP() throws Exception
	{
		/*
		 * String ip = (String) MessageContext.getCurrentMessageContext()
		 * .getProperty(MessageContext.REMOTE_ADDR); List<String> lst = new
		 * ArrayList<String>(); Collections.addAll(lst,
		 * com.aladdin.sc.persistence.config.Configuration.trustedIP);
		 * Collections.sort(lst); int idx = Collections.binarySearch(lst, ip);
		 * if (idx < 0) { throw new Exception("access denied"); }
		 */
	}
	
	
	/**
	 * Load URL and get first char of content
	 * 
	 * @param urlStr URL
	 * @return first char
	 */
	public static char getURLChar(String urlStr)
	{
		try
		{
			URL url = new URL(urlStr);
			SystemDictionary.webguiLog("DEBUG", urlStr);
			URLConnection uc = url.openConnection();
			uc.connect();
			InputStream is = uc.getInputStream();
			byte[] b = new byte[5];
			is.read(b, 0, 5);
			SystemDictionary.webguiLog("DEBUG", "" + (char) (b[0]));
			return (char) (b[0]);
		}
		catch (java.net.MalformedURLException e)
		{
			return 0;
		}
		catch (java.io.IOException e)
		{
			return 0;
		}
	}
	
	
	/**
	 * Help functions for printing methods name.
	 * 
	 * @param e
	 */
	public static void trace(StackTraceElement e[])
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
	
	
}
