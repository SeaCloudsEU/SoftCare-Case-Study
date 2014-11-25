package eu.ehealth.controllers;

import java.util.StringTokenizer;
import org.zkoss.util.resource.Labels;
import org.zkoss.zk.ui.Executions;
import org.zkoss.zk.ui.Session;
import org.zkoss.zk.ui.Sessions;
import org.zkoss.zk.ui.event.Event;
import org.zkoss.zk.ui.event.EventListener;
import org.zkoss.zul.Button;
import org.zkoss.zul.Label;
import org.zkoss.zul.Separator;
import org.zkoss.zul.Window;
import eu.ehealth.SystemDictionary;
import eu.ehealth.ws_client.StorageComponentImpl;
import eu.ehealth.ws_client.xsd.OperationResult;


/**
 * 
 * @author a572832
 *
 */
public class IndexAdministratorsWindow extends Window
{

	/**
	 * 
	 */
	private static final long serialVersionUID = -1229113934597753386L;
	
	
	private String adminid = null;


	/**
	 * Invoke this method to remove an administrator. It won't work unless you have set
	 * up the administratorid attribute before
	 */
	public void deleteAdministrator()
	{
		Session ses = Sessions.getCurrent();
		String userid = (String) ses.getAttribute("userid");
		StorageComponentImpl proxy = new StorageComponentImpl();
		try
		{
			proxy.deleteClinician(this.adminid, userid);
		}
		catch (Exception re)
		{
			re.printStackTrace();
		}
		finally
		{
			this.adminid = null;
			Executions.sendRedirect("/administration/index.zul");
		}

	}


	/**
	 * This method allow the user to remove administrator on the index page with a
	 * confirmation dialog
	 * 
	 * @param id_personid Id of the administrator which is going to be deleted
	 */
	public void deleteAdministratorMsg(String id_personid)
	{
		try {
			SystemDictionary.webguiLog("DEBUG", "[" + id_personid + "]");
			StringTokenizer tokens = new StringTokenizer(id_personid, "-");

			String userid = (String) Sessions.getCurrent().getAttribute("userid");
			
			if ((tokens == null) || (tokens.countTokens() != 2)) 
			{
				SystemDictionary.webguiLog("ERROR", "Tokens > 2 : " + id_personid + "");
				
				SystemDictionary.webguiLog("DEBUG", "Internal error");
				Window win = (Window) getFellow("internalformerror");
				((Label) win.getFellow("errorlbl")).setValue("-Internal error-");
				getFellow("internalformerror").setVisible(true);
				return;
			}

			String id = tokens.nextToken().trim();
			String personid = tokens.nextToken().trim();
			
			StorageComponentImpl proxy = new StorageComponentImpl();
			OperationResult ores = proxy.getUserIdByPersonId(personid, SystemDictionary.USERTYPE_ADMIN_INT, userid);
			
			SystemDictionary.webguiLog("DEBUG", " ores.getCode() : " + ores.getCode() + "   //   userid : " + userid);
			
			if (ores.getCode().equals(userid)) {
				// CAN'T DELETE YOURSELF
				SystemDictionary.webguiLog("DEBUG", "An admin can't delete himself");
				Window win = (Window) getFellow("internalformerror");
				((Label) win.getFellow("errorlbl")).setValue("-YOU CAN'T DELETE YOURSELF-");
				getFellow("internalformerror").setVisible(true);
				return;
			}

			this.adminid = id;
			ConfirmDeleteAdministrator auxwin = new ConfirmDeleteAdministrator(id);
			Button btn = new Button();
			String text = Labels.getLabel("administrators.delete.sure");
			btn.setLabel(text);
			btn.addEventListener("onClick", new EventListener() {
				public void onEvent(Event arg0) throws Exception
				{
					deleteAdministrator();
				}
			});
			auxwin.addEventListener("onClose", new EventListener() {
				public void onEvent(Event arg0) throws Exception
				{
					adminid = null;
				}
			});
			auxwin.appendChild(btn);
			this.appendChild(auxwin);
			try
			{
				auxwin.doModal();
			}
			catch (Exception ee)
			{
				SystemDictionary.webguiLog("WARN", ee.getMessage());
			}
		}
		catch (Exception ee)
		{
			SystemDictionary.webguiLog("ERROR", ee.getMessage());
		}
	}


	/**
	 * Very simple method to redirect users to update Administrators information
	 * 
	 * @param id Administrator to be updated
	 */
	public void updateAdministrator(String id_personid)
	{
		SystemDictionary.webguiLog("DEBUG", "[" + id_personid + "]");
		StringTokenizer tokens = new StringTokenizer(id_personid, "-");
	
		if ((tokens == null) || (tokens.countTokens() != 2))
		{
			SystemDictionary.webguiLog("ERROR", "Tokens > 2 : " + id_personid + "");
			
			SystemDictionary.webguiLog("DEBUG", "Internal error");
			Window win = (Window) getFellow("internalformerror");
			((Label) win.getFellow("errorlbl")).setValue("-Internal error-");
			getFellow("internalformerror").setVisible(true);
			return;
		}

		String id = tokens.nextToken().trim();
		
		Executions.sendRedirect("/administration/update.zul?clinid=" + id);
	}


	/**
	 * Very simple method to redirect users to see Administrators details
	 * 
	 * @param id Administrator to be shown on the details page
	 */
	public void detailsAdministrator(String id_personid)
	{
		SystemDictionary.webguiLog("DEBUG", "[" + id_personid + "]");
		StringTokenizer tokens = new StringTokenizer(id_personid, "-");
	
		if ((tokens == null) || (tokens.countTokens() != 2))
		{
			SystemDictionary.webguiLog("ERROR", "Tokens > 2 : " + id_personid + "");
			
			SystemDictionary.webguiLog("DEBUG", "Internal error");
			Window win = (Window) getFellow("internalformerror");
			((Label) win.getFellow("errorlbl")).setValue("-Internal error-");
			getFellow("internalformerror").setVisible(true);
			return;
		}

		String id = tokens.nextToken().trim();
		
		Executions.sendRedirect("/administration/details.zul?clinid=" + id);
	}


	@SuppressWarnings("serial")
	public class ConfirmDeleteAdministrator extends Window
	{


		public ConfirmDeleteAdministrator(String id)
		{
			Label message = new Label();
			String text = Labels.getLabel("administrators.delete.confirm");
			message.setValue(text + " " + id + "?");
			this.appendChild(message);

			Separator sep = new Separator();
			sep.setHeight("10px");
			this.appendChild(sep);

			String text2 = Labels.getLabel("administrators.delete");
			this.setTitle(text2);
			this.setBorder("normal");
			this.setClosable(true);
		}
		
		
	}
	

}
