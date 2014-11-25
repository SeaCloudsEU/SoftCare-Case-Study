package eu.ehealth.controllers.cms;

import org.zkoss.zk.ui.Executions;
import org.zkoss.zk.ui.Sessions;
import org.zkoss.zul.Window;
import org.zkoss.zul.Textbox;
import org.zkoss.zul.Checkbox;
import org.zkoss.zul.Listbox;
import eu.ehealth.SystemDictionary;
import eu.ehealth.ws_client.StorageComponentImpl;
import eu.ehealth.ws_client.xsd.MediaContent;
import eu.ehealth.ws_client.xsd.OperationResult;


/**
 * 
 * 
 * @author 
 * @date 22/04/2014.
 *
 */
public class ContentManagerPopup extends Window
{


	private static final long serialVersionUID = -3943905769559638872L;
	private String id;
	private String title;
	private String url;
	private String type;
	private String category;
	private String text;
	private boolean enabled;


	/**
	 * 
	 */
	public void saveContent()
	{
		this.processContent(false);
	}


	/**
	 * 
	 */
	public void updateContent()
	{
		this.processContent(true);
	}


	/**
	 * 
	 * @param hasid
	 */
	private void processContent(boolean hasid)
	{
		this.id = hasid ? ((Textbox) getFellow("content_id")).getValue() : "";
		String logintro = hasid ? "UPDATE" : "CREATE";
		OperationResult oresult = null;
		this.title = ((Textbox) getFellow("content_title")).getValue();
		this.url = ((Textbox) getFellow("content_url")).getValue();
		this.type = "Media Content";
		this.category = (String) ((Listbox) getFellow("content_cat")).getSelectedItem().getValue();
		this.text = ((Textbox) getFellow("content_text")).getValue();
		this.enabled = ((Checkbox) getFellow("content_enabled")).isChecked();
		
		SystemDictionary.webguiLog("DEBUG", "CONTENT ENABLED: " + this.enabled);
		
		MediaContent mcontent = new MediaContent(this.id, this.title, this.url, this.type, this.category, this.text, this.enabled);
		StorageComponentImpl proxy = SystemDictionary.getSCProxy();
		try
		{
			String userid = (String) Sessions.getCurrent()
					.getAttribute("userid");
			if (hasid)
			{
				oresult = proxy.updateMediaContent(mcontent, userid);
			}
			else
			{
				oresult = proxy.addMediaContent(mcontent, userid);
			}
			
			SystemDictionary.webguiLog("DEBUG", logintro + " CONTENT CODE: " + oresult.getCode());
			SystemDictionary.webguiLog("DEBUG", logintro + " CONTENT DESC: " + oresult.getDescription());
			SystemDictionary.webguiLog("DEBUG", logintro + " CONTENT STATUS: " + oresult.getStatus());
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		finally
		{
			Executions.getCurrent().sendRedirect("");
		}
	}
	
	
}
