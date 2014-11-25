package eu.ehealth.db.wservices.questionnaires;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import org.apache.log4j.Level;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import eu.ehealth.SystemDictionary;
import eu.ehealth.db.DbStorageComponent;
import eu.ehealth.db.wservices.common.Translations;
import eu.ehealth.db.xsd.QuestionnaireInfo;
import eu.ehealth.db.xsd.SystemParameter;
import eu.ehealth.util.StorageComponentUtilities;


/**
 * 
 * @author a572832
 *
 */
public class ListOfQuestionnaires extends DbStorageComponent<List<QuestionnaireInfo>, Object>
{

	
	/**
	 * 
	 * @param session
	 */
	public ListOfQuestionnaires(Session session)
	{
		super(session);
	}

	
	@Override
	protected List<QuestionnaireInfo> dbStorageFunction(ArrayList<Object> lo)
	{
		ArrayList<QuestionnaireInfo> l = new ArrayList<QuestionnaireInfo>();
		
		try
		{
			SystemParameter locale = (SystemParameter) lo.get(0); 
			String userId = (String) lo.get(1);

			// DEBUG - TRACE
			if (SystemDictionary.APPLICATION_DEBUG_LEVEL == Level.DEBUG)
				StorageComponentUtilities.trace(Thread.currentThread().getStackTrace());

			try
			{
				Object[] ql = _session.createSQLQuery("SELECT id, title, version FROM questionnaire").list().toArray();

				for (int i = 0; i < ql.length; i++)
				{
					Object[] quest = (Object[]) ql[i];
					QuestionnaireInfo qi = new QuestionnaireInfo();
					qi.setID(((Integer) quest[0]).toString());
					Translations languageTrans = new Translations(_session);
					qi.setTitle(languageTrans.getTranslate("questionnaire", (Integer) quest[0], locale, (String) quest[1]));
					qi.setVersion(((BigDecimal) quest[2]).doubleValue());

					l.add(qi);
				}
			}
			catch (HibernateException e)
			{
				SystemDictionary.logException(e);
			}

			return l;
		}
		catch (Exception ex)
		{
			SystemDictionary.logException(ex);

			return l;
		}
	}

	
}
