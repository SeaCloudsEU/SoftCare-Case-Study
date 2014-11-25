package eu.ehealth.controllers.details;

import java.rmi.RemoteException;
import org.zkoss.zk.ui.Executions;
import org.zkoss.zk.ui.Sessions;
import org.zkoss.zul.Textbox;
import org.zkoss.zul.Window;
import eu.ehealth.SystemDictionary;
import eu.ehealth.ws_client.StorageComponentImpl;
import eu.ehealth.ws_client.xsd.OperationResult;
import eu.ehealth.ws_client.xsd.User;


public class ChangePassword extends Window
{


	private static final long serialVersionUID = 1203601720297000762L;
	private String uid;
	private User user;


	public void changePassword(String pwd)
	{
		String userid = (String) Sessions.getCurrent().getAttribute("userid");
		StorageComponentImpl proxy = SystemDictionary.getSCProxy();
		try
		{
			OperationResult ores = proxy.changePassword(this.uid, pwd, userid);
			SystemDictionary.webguiLog("INFO", "Change Password: "
					+ ores.getCode() + "-" + ores.getDescription());
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


	public void setuserid(String uid) throws RemoteException
	{
		this.uid = uid;
		StorageComponentImpl proxy = SystemDictionary.getSCProxy();
		this.user = proxy.getUser(uid);
		((Textbox) this.getFellow("uname_show")).setValue(this.user
				.getUsername());
	}
}
