package eu.ehealth.dataprocessing;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Collections;
import java.util.Comparator;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.TimeZone;
import javax.xml.datatype.DatatypeFactory;
import org.hibernate.Session;
import eu.ehealth.SystemDictionary;
import eu.ehealth.db.db.AladdinUser;
import eu.ehealth.db.wservices.common.Translations;
import eu.ehealth.db.xsd.QuestionnaireAnswer;
import eu.ehealth.db.xsd.QuestionnaireAnswers;
import eu.ehealth.db.xsd.SystemParameter;


/**
 * 
 * @author a572832
 *
 */
public class HQuestionnaires extends HRules
{

	
	private QuestionnaireAnswer[] previousAnswerArray;
	
	
	/**
	 * 
	 * @param s
	 */
	public HQuestionnaires(Session s)
	{
		super(s);
	}
	

	/**
	 * 
	 * @param currentAnswerArray
	 * @param ObjectUserID
	 */
	public void analyzeQuestionnaires(QuestionnaireAnswer[] currentAnswerArray, Integer ObjectUserID)
	{
		SystemDictionary.webguiLog("DEBUG", "analyzeQuestionnaires");

		eu.ehealth.db.db.Warning generatedWarning = null;
		eu.ehealth.db.db.AladdinUser user = (AladdinUser) _session.load(eu.ehealth.db.db.AladdinUser.class, ObjectUserID);

		// get all questionnaire answers
		Calendar currentDate = Calendar.getInstance();
		currentDate.add(Calendar.DATE, -1);
		Calendar twoMonthsBefore = Calendar.getInstance();
		twoMonthsBefore.add(Calendar.DATE, -60);

		List<QuestionnaireAnswers> gQuestAnsResp = _getQuestionnaireAnswers(twoMonthsBefore, currentDate, ObjectUserID); // qDocument,
		if (gQuestAnsResp.size() == 0)
		{
			return;
		}
		QuestionnaireAnswers[] qanswers = gQuestAnsResp.toArray(new QuestionnaireAnswers[gQuestAnsResp.size()]);

		ArrayList<QuestionnaireAnswers> SortedAnswers = new ArrayList<QuestionnaireAnswers>(Arrays.asList(qanswers));
		Collections.sort(SortedAnswers, QDate_Order);

		QuestionnaireAnswers previousQuestionnaireAnswers = SortedAnswers.get(SortedAnswers.size() - 1);
		previousAnswerArray = previousQuestionnaireAnswers.getAnswer()
				.toArray(new QuestionnaireAnswer[previousQuestionnaireAnswers.getAnswer().size()]);
		List<RuleMap> DefinedRules = GetRules();

		RuleMap currentRule = null;

		double previousScore = 0;
		double currentScore = 0;

		for (int j = 0; j < previousAnswerArray.length; j++)
		{
			String globalID = previousAnswerArray[j].getGlobalID();
			SystemDictionary.webguiLog("DEBUG", "AAA Reading previous answer GlobalID = " + globalID);
			String globalIDGroup = getglobalIDGroup(globalID);
			double globalIDGroupAsDouble = -1;

			try
			{
				globalIDGroupAsDouble = Double.valueOf(globalIDGroup);
			}
			catch (Exception e)
			{
				SystemDictionary.logException(e);
			}

			if (globalIDGroupAsDouble == -1)
				continue;

			if (globalIDGroupAsDouble == 4000)
			{
				double previousScoreAsDouble = Double.valueOf(previousAnswerArray[j].getValue());
				previousScore += previousScoreAsDouble;
			}
		}

		for (int j = 0; j < currentAnswerArray.length; j++)
		{
			String globalID = currentAnswerArray[j].getGlobalID();
			SystemDictionary.webguiLog("DEBUG", "AAA Reading current answer GlobalID = " + globalID);
			String globalIDGroup = getglobalIDGroup(globalID);
			double globalIDGroupAsDouble = -1;
			try
			{
				globalIDGroupAsDouble = Double.valueOf(globalIDGroup);
			}
			catch (Exception e)
			{
				SystemDictionary.logException(e);
			}
			if (globalIDGroupAsDouble == -1)
				continue;

			if (globalIDGroupAsDouble == 4000)
			{
				double currentScoreAsDouble = Double.valueOf(currentAnswerArray[j].getValue());
				currentScore += currentScoreAsDouble;
			}
		}

		for (int k = 0; k < currentAnswerArray.length; k++)
		{
			QuestionnaireAnswer currentAnswer = currentAnswerArray[k];
			QuestionnaireAnswer previousAnswer = getPreviousQuestionnaireAnswer(currentAnswer.getQuestionID());

			// For non-existant answers, create a new answer with "Never"
			if (previousAnswer == null)
			{
				QuestionnaireAnswer neverAnswer = new QuestionnaireAnswer();
				neverAnswer.setQuestionID(currentAnswer.getQuestionID());
				neverAnswer.setGlobalID(currentAnswer.getGlobalID());
				neverAnswer.setValue("0");
				previousAnswer = neverAnswer;
			}

			String currentValueStr = currentAnswer.getValue();
			System.out.println("AAA Reading current value = " + currentValueStr);
			String previousValueStr = previousAnswer.getValue();
			SystemDictionary.webguiLog("DEBUG", "AAA Reading previous value = " + previousValueStr);

			if ("9".equals(currentValueStr) || "9".equals(previousValueStr))
				continue;

			double currentValue;
			double previousValue;

			try
			{
				currentValue = Double.valueOf(currentValueStr);
				previousValue = Double.valueOf(previousValueStr);
			}
			catch (Exception ex)
			{
				continue;
			}

			String globaID = currentAnswer.getGlobalID();

			if (globaID == null || "".equals(globaID))
				continue;

			int globalIDasInteger = Integer.valueOf(globaID);
			if (globalIDasInteger < 1000)
				continue;

			String globalIDGroup = getglobalIDGroup(globaID);
			if (globalIDGroup == null)
				continue;

			double globalIDGroupAsDouble = Double.valueOf(globalIDGroup);
			if (globalIDGroupAsDouble == 4000)
				continue;

			for (int count = 0; count < DefinedRules.size(); count++)
			{
				String ruleDataType = DefinedRules.get(count).getDataType();
				double ruleDataTypeAsDouble = Double.valueOf(ruleDataType);
				if (globalIDGroupAsDouble == ruleDataTypeAsDouble)
				{
					currentRule = DefinedRules.get(count);
					break;
				}
			}

			if (currentRule == null)
			{ 
				// Rule not found
				SystemDictionary.webguiLog("WARN", "rule not found");
				return;
			}

			SystemParameter locale = new SystemParameter();
			locale.setCode("en_UK");

			Translations languageTrans = new Translations(_session);
			String questionDescription = languageTrans.getTranslate("questionnairequestion", new Integer(currentAnswer.getQuestionID()), locale, "");

			String description = String.format("Question '%s' changed from '%s' to '%s'", questionDescription
							.replaceAll("\n", ""), GetAnswerDescription(globalIDGroupAsDouble, previousValue), GetAnswerDescription(globalIDGroupAsDouble, currentValue));

			SystemDictionary.webguiLog("DEBUG", "currentRule.getCallerID() "
					+ currentRule.getCallerID());
			switch (currentRule.getCallerID())
			{
				case GreaterThanRuleType:
					SystemDictionary.webguiLog("DEBUG", "GreaterThanRuleType");
					generatedWarning = GreaterThanRule(user.getPersonId(), description, currentValue, previousValue, currentRule
							.getLowerLimit(), QuestionnaireAnalysis);
					break;
				case LessThanRuleType:
					SystemDictionary.webguiLog("DEBUG", "LessThanRuleType");
					generatedWarning = LessThanRule(user.getPersonId(), description, currentValue, previousValue, currentRule
							.getLowerLimit(), QuestionnaireAnalysis);
					break;
			}

			if (generatedWarning != null)
			{
				SystemDictionary.webguiLog("WARN", "generatedWarning");
				_session.save(generatedWarning);
			}
		}

		if (currentScore > 0)
		{
			SystemDictionary.webguiLog("DEBUG", "currentScore > 0");

			String description = String.format("Change in Zarit Burden Interview from '%s' to '%s'", previousScore, currentScore);

			for (int count = 0; count < DefinedRules.size(); count++)
			{
				String ruleDataType = DefinedRules.get(count).getDataType();
				double ruleDataTypeAsDouble = Double.valueOf(ruleDataType);
				if (ruleDataTypeAsDouble == 4000)
				{
					currentRule = DefinedRules.get(count);
					break;
				}
			}

			generatedWarning = CategoryChangeRule(user.getPersonId(), description, currentScore, previousScore, currentRule
					.getLowerLimit(), currentRule.getUpperLimit(), QuestionnaireAnalysis);

			if (generatedWarning != null)
			{
				SystemDictionary.webguiLog("WARN", "generatedWarning");
				_session.save(generatedWarning);
			}
		}
	}
	
	
	/**
	 * 
	 * @param globalIDGroupAsDouble
	 * @param value
	 * @return
	 */
	private String GetAnswerDescription(double globalIDGroupAsDouble, double value)
	{
		if (globalIDGroupAsDouble == 1000 || globalIDGroupAsDouble == 3000)
		{
			if (value == 0)
				return "YES";
			else if (value == 1)
				return "NO";
		}

		if (globalIDGroupAsDouble == 2000)
		{
			if (value == 0)
				return "Never";
			else if (value == 1)
				return "Happened but not in the last week";
			else if (value == 2)
				return "1 or 2 times in the last week";
			else if (value == 3)
				return "From 3 to 6 times in the last week";
			else if (value == 4)
				return "Everyday";
		}

		return "";
	}


	/**
	 * 
	 * @param QuestionID
	 * @return
	 */
	private QuestionnaireAnswer getPreviousQuestionnaireAnswer(String QuestionID)
	{
		for (int i = 0; i < previousAnswerArray.length; i++)
		{
			if (previousAnswerArray[i].getQuestionID().equals(QuestionID))
				return previousAnswerArray[i];
		}
		return null;
	}


	/**
	 * returns the Global ID group (e.g. 1000, 2000, 3000 etc) based on GlobalID
	 *  
	 * @param globalID
	 * @return
	 */
	private String getglobalIDGroup(String globalID)
	{
		try
		{
			int globalIDInt = Integer.valueOf(globalID);
			double res = java.lang.Math.floor(globalIDInt / 1000) * 1000;
			return String.valueOf(res);
		}
		catch (Exception ex)
		{
			return null;
		}

	}


	/**
	 * Create Comparator for Sorting questionnaires
	 */
	private static final Comparator<QuestionnaireAnswers> QDate_Order = new Comparator<QuestionnaireAnswers>() {

		public int compare(QuestionnaireAnswers a, QuestionnaireAnswers b)
		{
			return a.getDateTime().toGregorianCalendar().compareTo(b.getDateTime().toGregorianCalendar());
		}
		
	};


	/**
	 * 
	 * @param fromDate
	 * @param toDate
	 * @param objectId
	 * @return
	 */
	private List<QuestionnaireAnswers> _getQuestionnaireAnswers(Calendar fromDate, Calendar toDate, Integer objectId)
	{
		List<QuestionnaireAnswers> l = new ArrayList<QuestionnaireAnswers>();

		String sql = "SELECT qa.timestamp, qq.quest, qa.objectid, qa.userid FROM questionnaireanswer qa inner join questionnairequestion qq on (qq.id = qa.question) WHERE qa.objectid = '"
				+ objectId.toString()
				+ "' AND qa.timestamp BETWEEN '"
				+ fromDate.toString()
				+ "' AND '"
				+ toDate.toString()
				+ "' GROUP BY qa.timestamp, qq.quest, qa.objectid, qa.userid";

		Object[] questionids = _session.createSQLQuery(sql).list().toArray();

		for (int i = 0; i < questionids.length; i++)
		{
			Object[] q = (Object[]) questionids[i];
			TimeZone zone = TimeZone.getDefault();
			Timestamp timestamp = (Timestamp) q[0];

			// work around
			Calendar before = Calendar.getInstance();
			before.setTimeInMillis(timestamp.getTime());
			Calendar after = Calendar.getInstance();
			after.setTimeInMillis(timestamp.getTime() + 1000);

			Integer question = (Integer) q[1];
			sql = "SELECT id FROM questionnaireanswer WHERE objectid = '" + objectId.toString();
			sql += "' AND timestamp BETWEEN '" + before.getTime().toString();
			sql += "' AND '" + after.getTime().toString();
			sql += "' AND question in (select id from questionnairequestion where quest = " + question.toString() + ")";

			Object[] lqa = _session.createSQLQuery(sql).list().toArray();
			QuestionnaireAnswers rqas = new QuestionnaireAnswers();

			GregorianCalendar c = new GregorianCalendar(zone);
			c.setTimeInMillis(timestamp.getTime());
			try
			{
				rqas.setDateTime(DatatypeFactory.newInstance()
						.newXMLGregorianCalendar(c));
			}
			catch (Exception ex)
			{
			}

			rqas.setObjectID(((Integer) q[2]).toString());
			rqas.setUserID(((Integer) q[3]).toString());

			String sqlTask = "SELECT id FROM task WHERE datetimefulfilled = '" + before.getTime().toString() + "'";
			Object[] lt = _session.createSQLQuery(sqlTask).list().toArray();
			if (lt.length > 0)
			{
				rqas.setTaskID(((Integer) lt[0]).toString());
			}

			for (int j = 0; j < lqa.length; j++)
			{
				QuestionnaireAnswer rqa = new QuestionnaireAnswer();
				eu.ehealth.db.db.QuestionnaireAnswer qa = (eu.ehealth.db.db.QuestionnaireAnswer) _session
						.load(eu.ehealth.db.db.QuestionnaireAnswer.class, (Integer) lqa[j]);
				rqa.setQuestionID(qa.getQuestion().toString());
				rqa.setValue(qa.getValue());
				rqas.setObjectID(qa.getObjectId().toString());
				rqas.setUserID(qa.getUserId().toString());

				eu.ehealth.db.db.QuestionnaireQuestion qq = (eu.ehealth.db.db.QuestionnaireQuestion) _session
						.load(eu.ehealth.db.db.QuestionnaireQuestion.class, qa.getQuestion());
				rqa.setGlobalID(qq.getGlobalId().toString());

				rqas.getAnswer().add(rqa);
			}

			l.add(rqas);
		}

		return l;
	}
	
	
	/**
	 * Rule 4 - Category Change Rule
	 * 
	 * @param patientID
	 * @param description
	 * @param Current
	 * @param Previous
	 * @param LowerThreshold
	 * @param UpperThreshold
	 * @param TypeOfAnalysis
	 * @return
	 */
	private static eu.ehealth.db.db.Warning CategoryChangeRule(Integer patientID,
			String description, double Current, double Previous,
			double LowerThreshold, double UpperThreshold, int TypeOfAnalysis)
	{
		if (Previous <= LowerThreshold && Current > UpperThreshold)
			return GenerateWarning(patientID, description, Current, Previous, TypeOfAnalysis, "");
		return null;
	}


}
