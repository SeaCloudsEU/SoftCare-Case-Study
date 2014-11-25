package eu.ehealth.security;

import java.io.IOException;
import javax.security.auth.callback.Callback;
import javax.security.auth.callback.CallbackHandler;
import javax.security.auth.callback.UnsupportedCallbackException;
import org.apache.ws.security.WSPasswordCallback;
import eu.ehealth.SystemDictionary;


/**
 * 
 * @author 
 *
 */
public class ServerPasswordCallback implements CallbackHandler
{


	/**
	 * KEYSTORE HANDLER
	 */
	public void handle(Callback[] callbacks) throws IOException, UnsupportedCallbackException
	{
		SystemDictionary.webguiLog("DEBUG", ".......................................");
		SystemDictionary.webguiLog("DEBUG", "Services ... ServerPasswordCallback ...");
		
		for (int i = 0; i < callbacks.length; i++) {
            WSPasswordCallback pwcb = (WSPasswordCallback)callbacks[i];
            String id = pwcb.getIdentifier();
            int usage = pwcb.getUsage();

            if (usage == WSPasswordCallback.DECRYPT)
            	SystemDictionary.webguiLog("DEBUG", "Services ... DECRYPT...............");
            else if (usage == WSPasswordCallback.SIGNATURE)
            	SystemDictionary.webguiLog("DEBUG", "Services ... SIGNATURE.............");
            else 
            	SystemDictionary.webguiLog("DEBUG", "Services ... TYPE : " + usage + "...........");
            
            // DEBUG
            SystemDictionary.webguiLog("DEBUG", "Services ... id : " + id);
            
            if (usage == WSPasswordCallback.DECRYPT || usage == WSPasswordCallback.SIGNATURE) {
                // crypto.properties
                if ("aliasws".equals(id.toLowerCase())) 
                {
                    pwcb.setPassword("12345678");
                }
                else 
                {
                	SystemDictionary.webguiLog("DEBUG", "Services ... ERROR - set password error -");
                }
            }
         }
	}
	

}
