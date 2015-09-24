package eu.ehealth;

import java.util.ArrayList;
import java.util.Properties;
import javax.jws.WebService;
import javax.mail.Authenticator;
import javax.mail.BodyPart;
import javax.mail.Message;
import javax.mail.Multipart;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import eu.ehealth.db.DbQueries;


/**
 * 
 * @author a572832
 *
 */
@WebService(endpointInterface = "eu.ehealth.ServicesComponent")
public class ServicesComponentImpl implements ServicesComponent
{

	
	private static final String SMTP_HOST_NAME = "smtp.sendgrid.net";
    private static final String SMTP_AUTH_USER = System.getenv("SENDGRID_USERNAME");
    private static final String SMTP_AUTH_PWD  = System.getenv("SENDGRID_PASSWORD");
	
    
	@Override
	public void sendEmail(String subject, String txt, String patientId)
	{
		try
		{
			SystemDictionary.webguiLog("DEBUG", "sendEmail : /" + patientId + "/" + txt + "/" + subject + "/");
			
			DbQueries dbSql = new DbQueries();
			ArrayList<InternetAddress> lEmails = null; //dbSql.getClinicianEmail(patientId);
			
			if ( (lEmails != null) && (lEmails.size() > 0)) 
			{
				Properties props = new Properties();
		        props.put("mail.transport.protocol", "smtp");
		        props.put("mail.smtp.host", SMTP_HOST_NAME);
		        props.put("mail.smtp.port", 587);
		        props.put("mail.smtp.auth", "true");
	
		        Authenticator auth = new SMTPAuthenticator();
		        Session mailSession = Session.getDefaultInstance(props, auth);
		        // uncomment for debugging infos to stdout
		        mailSession.setDebug(true);
		        Transport transport = mailSession.getTransport();
	
		        MimeMessage message = new MimeMessage(mailSession);
	
		        Multipart multipart = new MimeMultipart("alternative");
	
		        BodyPart part1 = new MimeBodyPart();
		        part1.setText(txt); 
		        multipart.addBodyPart(part1);
	
		        message.setContent(multipart);
		        message.setFrom(new InternetAddress("app21535939@heroku.com"));
		        message.setSubject(subject);
		        
		        message.setRecipients(Message.RecipientType.TO, lEmails.toArray(new InternetAddress[lEmails.size()]));
	
		        transport.connect();
		        transport.sendMessage(message,
		        message.getRecipients(Message.RecipientType.TO));
		        transport.close();
			}
		}
		catch (Exception e)
		{
			SystemDictionary.logException(e);
		}
	}
	
	
	private class SMTPAuthenticator extends javax.mail.Authenticator {
        public PasswordAuthentication getPasswordAuthentication() {
            String username = SMTP_AUTH_USER;
            String password = SMTP_AUTH_PWD;
            return new PasswordAuthentication(username, password);
        }
    }

	
	@Override
	public void sendSMS(String txt, String sendTo)
	{
		// TODO Auto-generated method stub
	}
	

	@Override
	public void sendVideo()
	{
		// TODO Auto-generated method stub
	}

	
	@Override
	public void getVideo(String id)
	{
		// TODO Auto-generated method stub
	}
	

}
