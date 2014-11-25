package eu.ehealth.controllers;

import java.rmi.RemoteException;
import org.zkoss.util.resource.Labels;
import org.zkoss.zk.ui.Executions;
import org.zkoss.zk.ui.Session;
import org.zkoss.zk.ui.Sessions;
import org.zkoss.zk.ui.SuspendNotAllowedException;
import org.zkoss.zk.ui.event.Event;
import org.zkoss.zk.ui.event.EventListener;
import org.zkoss.zul.Button;
import org.zkoss.zul.Hbox;
import org.zkoss.zul.Label;
import org.zkoss.zul.Separator;
import org.zkoss.zul.Window;
import eu.ehealth.ErrorDictionary;
import eu.ehealth.SystemDictionary;
import eu.ehealth.controllers.details.ChangePassword;
import eu.ehealth.ws_client.StorageComponentImpl;
import eu.ehealth.ws_client.xsd.Clinician;
import eu.ehealth.ws_client.xsd.Identifier;
import eu.ehealth.ws_client.xsd.OperationResult;
import eu.ehealth.ws_client.xsd.PersonData;
import eu.ehealth.ws_client.xsd.User;


/**
 * This class is in charge of managing Clinician forms
 * 
 * @author Xavi Sarda (Atos Origin)
 */
public class ClinicianControllerWindow extends AladdinFormControllerWindow
{


	private static final long serialVersionUID = 2164524095371327016L;


	/**
	 * Default constructor
	 */
	public ClinicianControllerWindow()
	{
		isNewUser = true;
		this.buildForm(true);
	}


	/**
	 * Constructor for changing the create form into an update one
	 * 
	 * @param current Clinician to be updated
	 * @param details Boolean flag to let the constructor know that is a update
	 *            operation
	 */
	public ClinicianControllerWindow(Clinician current, boolean details)
	{
		isNewUser = false;
		
		this.currentid = current.getID();
		this.currentdata = current.getPersonData();
		this.detailsmode = details;

		this.buildForm(false);

		this.addPersonFieldsValues();
		this.addAddressFieldsValues();
		this.addCommunicationFieldsValues();
		Hbox buttonshbox = new Hbox();

		if (this.detailsmode)
		{
			Boolean isadmin = (Boolean) Sessions.getCurrent().getAttribute("isadmin");
			if (isadmin)
			{
				buttonshbox.appendChild(this.createEditButton());
				Separator sep = new Separator();
				sep.setWidth("10px");
				sep.setOrient("horizontal");
				buttonshbox.appendChild(sep);
				buttonshbox.appendChild(this.createPasswordButton());
			}
		}
		else
		{
			SystemDictionary.webguiLog("INFO", "WHAT!!!!");
			buttonshbox.appendChild(this.createUpdateButton());
		}
		this.appendChild(buttonshbox);
		this.getFellow("pat_uname").getParent().setVisible(false);
	}


	/**
	 * Build form instructions to be executed
	 */
	public void buildForm(boolean newClinician)
	{
		this.addErrorBox();
		this.addPersonFields(newClinician);
		this.addAddressFields();
		this.addCommunicationFields();
	}


	/**
	 * It creates a new Clinician on the DataStorage. Function to be executed on
	 * "Save" button click.
	 */
	public void createClinician()
	{
		if (!validateForm())
		{
			return;
		}
		
		SystemDictionary.webguiLog("TRACE", "Saving Clinician...");
		// Getting information from form fields
		PersonData personData = this.getPersonData();

		// Create ID
		Identifier ident = new Identifier();
		String clinID = ident.getType() + '-' + ident.getNumber();

		// TODO isPrimary control on Communication and Addresses
		Clinician clinic = new Clinician(clinID, personData);
		try
		{
			StorageComponentImpl proxy = new StorageComponentImpl();
			Session ses = Sessions.getCurrent();
			String id = (String) ses.getAttribute("userid");
			String username = this.getUsername();
			OperationResult result = proxy.createClinician(clinic, id);
			
			User user = createNewUser(SystemDictionary.USERTYPE_CLINICIAN, result.getCode(), username);
			result = proxy.createUser(user);
			if (!result.getDescription().equals("ok"))
			{
				SystemDictionary.webguiLog("TRACE", "Error creating user");
				Window win = (Window) getFellow("internalformerror");
				((Label) win.getFellow("errorlbl")).setValue("Username not valid");
				getFellow("internalformerror").setVisible(true);
				SystemDictionary.webguiLog("TRACE", "Deleting Clinician...");
				OperationResult newresult = proxy.deleteClinician(user.getPersonID(), id);
				SystemDictionary.webguiLog("TRACE", "Delete Clinician result: " + newresult.getCode());
				return;
			}
			Executions.getCurrent().sendRedirect("/clinicians/index.zul");
		}
		catch (Exception e)
		{
			ErrorDictionary.redirectWithError("/carers/?error=" + ErrorDictionary.UNKOW_ERROR);
		}
	}


	/**
	 * It sends the updates of an existing Clinician to the StorageComponent.
	 * Function to be executed on "Update" button click.
	 */
	public void updateClinician()
	{
		PersonData personData = this.getPersonData();

		Clinician clinic = new Clinician(this.currentid, personData);
		try
		{
			StorageComponentImpl proxy = new StorageComponentImpl();
			Session ses = Sessions.getCurrent();
			String id = (String) ses.getAttribute("userid");
			proxy.updateClinician(clinic, id);
		}
		catch (Exception e)
		{
			ErrorDictionary.redirectWithError("/carers/?error=" + ErrorDictionary.UNKOW_ERROR);
		}
		finally
		{
			// TODO Show message on the following page.
			Executions.getCurrent().sendRedirect("/clinicians/index.zul");
		}
	}


	/**
	 * This method creates a button to create new clinicians using the current
	 * form
	 * 
	 * @return Button to be added to the form
	 */
	public Button createUpdateButton()
	{
		Button btn = new Button();
		String text = Labels.getLabel("clinicians.update.title");
		btn.setLabel(text);
		btn.addEventListener("onClick", new EventListener() {
			public void onEvent(Event arg0) throws Exception
			{
				updateClinician();
			}
		});

		return btn;
	}


	/**
	 * This method creates a button to modify an existing clinician using the
	 * current form
	 * 
	 * @return Button to be added to the form
	 */
	public Button createEditButton()
	{
		Button btn = new Button();
		String text = Labels.getLabel("clinicians.edit");
		btn.setLabel(text);
		btn.addEventListener("onClick", new EventListener() {
			public void onEvent(Event arg0) throws Exception
			{
				Executions.getCurrent().sendRedirect("/clinicians/update.zul?clinid=" + currentid);
			}
		});

		return btn;
	}


	/**
	 * 
	 * @return
	 */
	public Button createPasswordButton()
	{
		Button btn = new Button("Change Password");
		btn.addEventListener("onClick", new EventListener() {
			public void onEvent(Event arg0) throws Exception
			{
				createPasswordDialog();
			}
		});
		return btn;
	}


	/**
	 * 
	 * @throws SuspendNotAllowedException
	 * @throws InterruptedException
	 * @throws RemoteException
	 */
	public void createPasswordDialog() throws SuspendNotAllowedException, InterruptedException, RemoteException
	{
		ChangePassword win = (ChangePassword) Executions.createComponents("password.zul", this, null);

		this.appendChild(win);
		StorageComponentImpl proxy = SystemDictionary.getSCProxy();
		String userid = (String) Sessions.getCurrent().getAttribute("userid");
		OperationResult ores = proxy.getUserIdByPersonId(this.currentid, SystemDictionary.USERTYPE_CLINICIAN_INT, userid);
		win.setuserid(ores.getCode());
		win.doModal();
	}
	
	
	/**
	 * 
	 * @return
	 */
	private boolean validateForm() {
		try {
			// check common fields
			if (!validateFormCommonFields())
				return false;
					
			return true;
		}
		catch (Exception e) {
			SystemDictionary.webguiLog("ERROR", e.getMessage());
			return false;
		}	
	}
	

}
