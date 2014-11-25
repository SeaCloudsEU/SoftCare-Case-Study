package eu.ehealth.controllers.warnings;

import java.rmi.RemoteException;
import org.zkoss.zk.ui.Executions;
import org.zkoss.zk.ui.Sessions;
import org.zkoss.zul.Window;
import eu.ehealth.SystemDictionary;
import eu.ehealth.ws_client.StorageComponentImpl;
import eu.ehealth.ws_client.xsd.OperationResult;


public class WarningsPopupController extends Window
{


	private static final long serialVersionUID = -6712984876432126616L;
	private String warningid;


	public void markWarningAsRead() throws RemoteException
	{
		StorageComponentImpl proxy = new StorageComponentImpl();
		String uid = (String) Sessions.getCurrent().getAttribute("userid");
		try
		{
			OperationResult op = proxy.markWarningAsRead(this.warningid, uid);
			SystemDictionary.webguiLog("DEBUG", "Mark as read: " + op.getCode()
					+ ":" + op.getDescription());
		}
		catch (Exception re)
		{
			this.setVisible(false);
			this.detach();
		}
		finally
		{
			Executions.getCurrent().sendRedirect("");
		}

	}


	public String getWarningid()
	{
		return warningid;
	}


	public void setWarningid(String warningid)
	{
		this.warningid = warningid;
	}

}
