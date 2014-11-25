package eu.ehealth.security;

import java.io.IOException;
import javax.security.auth.callback.Callback;
import javax.security.auth.callback.CallbackHandler;
import javax.security.auth.callback.UnsupportedCallbackException;
import org.apache.ws.security.WSPasswordCallback;
import eu.ehealth.SystemDictionary;


/**
 * 
 * @author a572832
 *
 */
public class ClientePasswordCallback implements CallbackHandler
{


	/**
	 * KEYSTORE HANDLER
	 */
	public void handle(Callback[] callbacks) throws IOException, UnsupportedCallbackException
	{
		SystemDictionary.webguiLog("DEBUG", "_______________________________________");
		SystemDictionary.webguiLog("DEBUG", "WebGUI ... ClientePasswordCallback ...");
		
		for (int i = 0; i < callbacks.length; i++) {
            WSPasswordCallback pwcb = (WSPasswordCallback)callbacks[i];
            String id = pwcb.getIdentifier();
            int usage = pwcb.getUsage();
            
            if (usage == WSPasswordCallback.DECRYPT)
            	SystemDictionary.webguiLog("DEBUG", "WebGUI ... DECRYPT...............");
            else if (usage == WSPasswordCallback.SIGNATURE)
            	SystemDictionary.webguiLog("DEBUG", "WebGUI ... SIGNATURE.............");
            else 
            	SystemDictionary.webguiLog("DEBUG", "WebGUI ... TYPE : " + usage + "...........");
            
            // DEBUG
            SystemDictionary.webguiLog("DEBUG", "Services ... id : " + id);
            
            if (usage == WSPasswordCallback.DECRYPT || usage == WSPasswordCallback.SIGNATURE) {
                if ("aliasgui".equals(id.toLowerCase())) 
                {
                    pwcb.setPassword("12345678");
                }
                else 
                {
                	SystemDictionary.webguiLog("WARN", "WebGUI ... ERROR - set password error -");
                }
            }
        }
	}
	

}
