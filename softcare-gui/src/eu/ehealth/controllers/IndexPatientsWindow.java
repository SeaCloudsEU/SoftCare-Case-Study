package eu.ehealth.controllers;

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


/**
 * This class manages al events from the patients index page
 * 
 * @author Xavi Sarda (Atos Origin)
 */
public class IndexPatientsWindow extends Window
{


	private static final long serialVersionUID = -4585592732261850018L;
	private String patid = null;


	/**
	 * Invoke this method to remove a patients. It won't work unless you have
	 * set the patid attribute before
	 */
	public void deletePatient()
	{
		Session ses = Sessions.getCurrent();
		String userid = (String) ses.getAttribute("userid");
		StorageComponentImpl proxy = new StorageComponentImpl();
		try
		{
			proxy.deletePatient(this.patid, userid);
		}
		catch (Exception re)
		{
			re.printStackTrace();
		}
		finally
		{
			this.patid = null;
			Executions.sendRedirect("/patients/index.zul");
		}

	}


	/**
	 * This method allow the user to remove patients from the index page with a
	 * confirmation dialog
	 * 
	 * @param id Id of the patient which is going to be deleted
	 */
	public void deletePatientMsg(String id)
	{
		this.patid = id;
		ConfirmDeletePatient auxwin = new ConfirmDeletePatient(id);
		Button btn = new Button();
		String text = Labels.getLabel("patients.delete.sure");
		btn.setLabel(text);
		btn.addEventListener("onClick", new EventListener() {


			public void onEvent(Event arg0) throws Exception
			{
				deletePatient();
			}
		});
		auxwin.addEventListener("onClose", new EventListener() {


			public void onEvent(Event arg0) throws Exception
			{
				patid = null;
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


	/**
	 * Very simple method to redirect users to update patients information
	 * 
	 * @param id Patient to be updated
	 */
	public void updatePatient(String id)
	{
		Executions.sendRedirect("/patients/update.zul?patid=" + id);
	}


	/**
	 * Very simple method to redirect users to see Patients details
	 * 
	 * @param id Patient to be shown on the details page
	 */
	public void detailsPatient(String id)
	{
		Executions.sendRedirect("/patients/details.zul?patid=" + id);
	}


	@SuppressWarnings("serial")
	public class ConfirmDeletePatient extends Window
	{


		public ConfirmDeletePatient(String id)
		{
			Label message = new Label();
			String text = Labels.getLabel("patients.delete.confirm");
			message.setValue(text + " " + id + "?");
			this.appendChild(message);

			Separator sep = new Separator();
			sep.setHeight("10px");
			this.appendChild(sep);

			String text2 = Labels.getLabel("patients.delete");
			this.setTitle(text2);
			this.setBorder("normal");
			this.setClosable(true);
		}
	}

}
