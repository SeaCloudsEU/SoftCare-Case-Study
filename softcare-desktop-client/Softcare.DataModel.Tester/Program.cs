using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Xml.Serialization;
using System.IO;
using System.Xml;

namespace Aladdin.DataModel.Tester
{
    class Program
    {
        static void Main(string[] args)
        {

            //SerializePatient();
            SerializeQuestionnaire();
            Questionnaire q = Questionnaire.FromFile("DailyQuestionnaire.xml");

            //SerializePatientAssessment();
            //SerializeCaregiverAssessment();
            //SerializeQuestionnaireAnswers();
            //SerializeTask();
            //SerializePatientSearchCriteria();
        }

        private static void SerializePatientSearchCriteria()
        {
            PersonSearchCriteria psc = new PersonSearchCriteria();
            psc.CompareOp = new SystemParameter(1, "LessThan");
            psc.FieldName = "Age";
            psc.FieldValue1 = "50";
            psc.FieldValue2 = "60";
            SerializeMe(psc, "PersonSearchCriteria.xml");
        }


        private static void SerializeTask()
        {
            Task task = new Task();
            task.TaskType = new SystemParameter(1, "DailyQuestionnaire");
            task.DateTimeAssigned = new DateTime(2010, 3, 20, 12, 0, 0);
            task.DateTimeFulfilled  = new DateTime(2010, 3, 20, 17, 38, 0);
            task.TaskStatus = new SystemParameter(3, "Completed");
            SerializeMe(task, "task.xml");

        }

        private static void SerializeQuestionnaireAnswers()
        {
            QuestionnaireAnswers answers = new QuestionnaireAnswers();

            QuestionnaireAnswer a1 = new QuestionnaireAnswer();
            a1.QuestionID = "1";
            a1.Value = "1";

            QuestionnaireAnswer a2 = new QuestionnaireAnswer();
            a2.QuestionID = "2";
            a2.Value = "0";

            answers.Answers.Add(a1);
            answers.Answers.Add(a2);

            SerializeMe(answers, "QuestionnaireAnswers.xml");

        }

        private static void SerializeCaregiverAssessment()
        {
            CarerAssessment ca = new CarerAssessment();
            ca.DateOfAssessment = new DateTime(2010, 01, 15);
            ca.Caregiver.PersonData.ID = Guid.NewGuid();
            ca.Caregiver.PersonData.Name = "Caregiver' Name";
            ca.Caregiver.PersonData.Surname = "Caregiver's Surname";
            ca.EmotionalOrMentalDisorders = "depression, anxiety...";
            ca.PsychoactiveDrugs = "Antidepressant";
            ca.RelevantHealthProblem = " a relevant health problem";
            ca.SeverityOfBurden = 52;
            ca.QualityOfLife = 27;
            SerializeMe(ca, "CaregiverAssessment.xml");

        }

        private static void SerializePatientAssessment()
        {
            PatientAssessment pa = new PatientAssessment();
            Patient patient = new Patient();

            PersonData cd = new PersonData();
            cd.ID = Guid.NewGuid();
            cd.Surname = "Androulidakis";
            cd.Name = "Aggelos";
            cd.ID = Guid.NewGuid();
            patient.PersonData = cd;

            pa.Patient = patient;
            pa.Aetiology = new SystemParameter(1, "Alzheimer D");
            pa.BarthelIndex = 80;
            pa.BlessedScalePart1 = 5.5M;
            pa.BlessedScalePart2 = 5;
            pa.BlessedScalePart3 = 6;
            pa.CharlsonComorbidityIndex = 10;
            pa.ChecklistMBPC = 50;
            pa.Comorbidity = "HBP";
            pa.DateOfAssessment = System.DateTime.Now;
            pa.GDS = 7;
            pa.LawtonIndex = 7;
            pa.MDRS = 100;
            pa.MMSE = 22;
            pa.NPQI_Severity = 30;
            pa.NPQI_Stress = 30;
            pa.RelevantPathologyAntecedents = "AVC";
            pa.TimeElapsedSinceDiagnosed = 6;

            Measurement m1 = new Measurement();
            m1.DateTime = System.DateTime.Now;
            m1.Type = MeasurementType.BP_Systolic;
            m1.Units = "mmHg";
            m1.Value = 115.0M;
            m1.LowerLimit = 100;

            Measurement m2 = new Measurement();
            m2.DateTime = DateTime.Now;
            m2.Type = MeasurementType.BP_Diastolic;
            m2.Units = "mmHg";
            m2.Value = 60;
            m2.UpperLimit = 80;

            Measurement m3 = new Measurement();
            m3.DateTime = DateTime.Now;
            m3.Type = MeasurementType.Weight;
            m3.Units = "Kg";
            m3.Value = 102;

            pa.ClinicalData = new List<Measurement>();

            pa.ClinicalData.Add(m1);
            pa.ClinicalData.Add(m2);
            pa.ClinicalData.Add(m3);

            SerializeMe(pa, "PatientAssessment.xml");




        }

        private static void SerializeQuestionnaire()
        {
            Questionnaire q = new Questionnaire();
            q.Version = "1.0";
            List<QuestionnaireQuestion> QuestionnaireQuestions = new List<QuestionnaireQuestion>();

            #region 1. What is the year, season, date, day, and month?
            QuestionnaireQuestion q1 = new QuestionnaireQuestion();
            q1.ID = "1";
            q1.QuestionType = QuestionnaireQuestionAnswerType.OneAnswer;
            q1.Title = "1. What is the year, season, date, day, and month?";
            SetOneAnswer(q1);
            QuestionnaireQuestions.Add(q1);

            QuestionnaireQuestion q1_1 = new QuestionnaireQuestion();
            q1_1.ID = "1.1";
            q1_1.Condition = "1";
            q1_1.QuestionType = QuestionnaireQuestionAnswerType.OneAnswer;
            q1_1.Title = "1. Year";
            SetOneAnswer(q1_1);
            q1.Questions.Add(q1_1);

            QuestionnaireQuestion q1_2= new QuestionnaireQuestion();
            q1_2.ID = "1.2";
            q1_2.Condition = "1";
            q1_2.QuestionType = QuestionnaireQuestionAnswerType.OneAnswer;
            q1_2.Title = "2. Season ";
            SetOneAnswer(q1_2);
            q1.Questions.Add(q1_2);

            QuestionnaireQuestion q1_3 = new QuestionnaireQuestion();
            q1_3.ID = "1.3";
            q1_3.Condition = "1";
            q1_3.QuestionType = QuestionnaireQuestionAnswerType.OneAnswer;
            q1_3.Title = "3. Date";
            SetOneAnswer(q1_3);
            q1.Questions.Add(q1_3);

            QuestionnaireQuestion q1_4 = new QuestionnaireQuestion();
            q1_4.ID = "1.4";
            q1_4.Condition = "1";
            q1_4.QuestionType = QuestionnaireQuestionAnswerType.OneAnswer;
            q1_4.Title = "4. Day ";
            SetOneAnswer(q1_4);
            q1.Questions.Add(q1_4);

            QuestionnaireQuestion q1_5 = new QuestionnaireQuestion();
            q1_5.ID = "1.5";
            q1_5.Condition = "1";
            q1_5.QuestionType = QuestionnaireQuestionAnswerType.OneAnswer;
            q1_5.Title = "5. Month";
            SetOneAnswer(q1_5);
            q1.Questions.Add(q1_5);
            #endregion

            #region 2. Where are we (state, country, town or city, home/hospital, floor)?
            QuestionnaireQuestion q2 = new QuestionnaireQuestion();
            q2.ID = "2";
            q2.QuestionType = QuestionnaireQuestionAnswerType.OneAnswer;
            q2.Title = "2. Where are we (state, country, town or city, home/hospital, floor)?";
            SetOneAnswer(q2);
            QuestionnaireQuestions.Add(q2);

            QuestionnaireQuestion q2_1 = new QuestionnaireQuestion();
            q2_1.ID = "2.1";
            q2_1.QuestionType = QuestionnaireQuestionAnswerType.OneAnswer;
            q2_1.Title = "1. State";
            SetOneAnswer(q2_1);
            q2.Questions.Add(q2_1);

            QuestionnaireQuestion q2_2 = new QuestionnaireQuestion();
            q2_2.ID = "2.2";
            q2_2.QuestionType = QuestionnaireQuestionAnswerType.OneAnswer;
            q2_2.Title = "2. Country ";
            SetOneAnswer(q2_2);
            q2.Questions.Add(q2_2);

            QuestionnaireQuestion q2_3 = new QuestionnaireQuestion();
            q2_3.ID = "2.3";
            q2_3.QuestionType = QuestionnaireQuestionAnswerType.OneAnswer;
            q2_3.Title = "3. Town or city";
            SetOneAnswer(q2_3);
            q2.Questions.Add(q2_3);

            QuestionnaireQuestion q2_4 = new QuestionnaireQuestion();
            q2_4.ID = "2.4";
            q2_4.QuestionType = QuestionnaireQuestionAnswerType.OneAnswer;
            q2_4.Title = "4. Home/hospital ";
            SetOneAnswer(q2_4);
            q2.Questions.Add(q2_4);

            QuestionnaireQuestion q2_5 = new QuestionnaireQuestion("2.5", "5. Floor", QuestionnaireQuestionAnswerType.OneAnswer);
            SetOneAnswer(q2_5);
            q2.Questions.Add(q2_5);
            #endregion
            
            #region Cluster 1: Cognitive

            QuestionnaireQuestion q3 = new QuestionnaireQuestion("3", "3. Does he/she mix up past and present (e.g. thinking a deceased relative is alive)?", QuestionnaireQuestionAnswerType.OneAnswer);
            SetOneAnswer(q3);
            QuestionnaireQuestions.Add(q3);

            QuestionnaireQuestion q3_Frequency = new QuestionnaireQuestion("3.1", "How often?", QuestionnaireQuestionAnswerType.OneAnswer);
            SetFrequencyAnswer(q3_Frequency);
            q3.Questions.Add(q3_Frequency);

            QuestionnaireQuestion q4 = new QuestionnaireQuestion("4", "4. Does he/she loose, misplace or hide things?", QuestionnaireQuestionAnswerType.OneAnswer);
            SetOneAnswer(q4);
            QuestionnaireQuestions.Add(q4);

            QuestionnaireQuestion q4_Frequency = new QuestionnaireQuestion("4.1", "How often?", QuestionnaireQuestionAnswerType.OneAnswer);
            SetFrequencyAnswer(q4_Frequency);
            q4.Questions.Add(q4_Frequency);

            QuestionnaireQuestion q5 = new QuestionnaireQuestion("5", "5.  Does he/she wander or get lost?", QuestionnaireQuestionAnswerType.OneAnswer);
            SetOneAnswer(q5);
            QuestionnaireQuestions.Add(q5);

            QuestionnaireQuestion q5_Frequency = new QuestionnaireQuestion("5.1", "How often?", QuestionnaireQuestionAnswerType.OneAnswer);
            SetFrequencyAnswer(q5_Frequency);
            q5.Questions.Add(q5_Frequency);

            QuestionnaireQuestion q6 = new QuestionnaireQuestion("6", "6.  Does he/she not recognize familiar people?", QuestionnaireQuestionAnswerType.OneAnswer);
            SetOneAnswer(q6);
            QuestionnaireQuestions.Add(q6);

            QuestionnaireQuestion q6_Frequency = new QuestionnaireQuestion("6.1", "How often?", QuestionnaireQuestionAnswerType.OneAnswer);
            SetFrequencyAnswer(q6_Frequency);
            q6.Questions.Add(q6_Frequency);

            QuestionnaireQuestion q7 = new QuestionnaireQuestion("7", "7. Does he/she see or hear things that are not there (hallucinations or illusions)?", QuestionnaireQuestionAnswerType.OneAnswer);
            SetOneAnswer(q7);
            QuestionnaireQuestions.Add(q7);

            QuestionnaireQuestion q7_Frequency = new QuestionnaireQuestion("7.1", "How often?", QuestionnaireQuestionAnswerType.OneAnswer);
            SetFrequencyAnswer(q7_Frequency);
            q7.Questions.Add(q7_Frequency);

            #endregion

            #region Cluster 2: Aggressiveness

            QuestionnaireQuestion q8 = new QuestionnaireQuestion("8", "Does he/she become angry?", QuestionnaireQuestionAnswerType.OneAnswer);
            SetOneAnswer(q8);
            QuestionnaireQuestions.Add(q8);

            QuestionnaireQuestion q9 = new QuestionnaireQuestion("9", "Is he/she suspicious or makes accusations?", QuestionnaireQuestionAnswerType.OneAnswer);
            SetFrequencyAnswer(q9);
            q8.Questions.Add(q9);

            QuestionnaireQuestion q10 = new QuestionnaireQuestion("10", "Does he/she strike out or try to hit?", QuestionnaireQuestionAnswerType.OneAnswer);
            SetFrequencyAnswer(q10);
            q8.Questions.Add(q10);

            QuestionnaireQuestion q11 = new QuestionnaireQuestion("11", "Does he/she engage in behaviour potentially dangerous to others or him/herself?", QuestionnaireQuestionAnswerType.OneAnswer);
            SetFrequencyAnswer(q11);
            q8.Questions.Add(q11);

            QuestionnaireQuestion q12 = new QuestionnaireQuestion("12", "Does he/she talk in an aggressive or threatening manner?", QuestionnaireQuestionAnswerType.OneAnswer);
            SetFrequencyAnswer(q12);
            q8.Questions.Add(q12);

            QuestionnaireQuestion q13 = new QuestionnaireQuestion("13", "Is he/she uncooperative when I want him/her to do something?", QuestionnaireQuestionAnswerType.OneAnswer);
            SetFrequencyAnswer(q13);
            q8.Questions.Add(q13);

            #endregion

            #region Cluster 3: Mood

            QuestionnaireQuestion q14 = new QuestionnaireQuestion("14", "Does he/she appear sad or depressed?", QuestionnaireQuestionAnswerType.OneAnswer);
            SetOneAnswer(q14);
            QuestionnaireQuestions.Add(q14);

            QuestionnaireQuestion q15 = new QuestionnaireQuestion("15", "Is he/she unable to keep occupied or busy by self?", QuestionnaireQuestionAnswerType.OneAnswer);
            SetFrequencyAnswer(q15);
            q14.Questions.Add(q15);

            QuestionnaireQuestion q16 = new QuestionnaireQuestion("16", "Does he/she spend long periods of time inactive?", QuestionnaireQuestionAnswerType.OneAnswer);
            SetFrequencyAnswer(q16);
            q14.Questions.Add(q16);

            QuestionnaireQuestion q17 = new QuestionnaireQuestion("17", "Does he/she talk little or not at all?", QuestionnaireQuestionAnswerType.OneAnswer);
            SetFrequencyAnswer(q17);
            q14.Questions.Add(q17);

            QuestionnaireQuestion q18 = new QuestionnaireQuestion("18", "Does he/she cry or become tearful or appear emotionally instable?", QuestionnaireQuestionAnswerType.OneAnswer);
            SetFrequencyAnswer(q18);
            q14.Questions.Add(q18);

            QuestionnaireQuestion q19 = new QuestionnaireQuestion("19", "Does he/she eat excessively or not at all?", QuestionnaireQuestionAnswerType.OneAnswer);
            SetFrequencyAnswer(q19);
            q14.Questions.Add(q19);

            #endregion

            #region Questions 20 - 32

            QuestionnaireQuestion q20 = new QuestionnaireQuestion("20", "Is he/she able to solve daily problems?", QuestionnaireQuestionAnswerType.OneAnswer);
            SetOneAnswer(q20);
            q14.Questions.Add(q20);

            QuestionnaireQuestion q21 = new QuestionnaireQuestion("21", "Does he/she take care of his/her personal hygiene?", QuestionnaireQuestionAnswerType.OneAnswer);
            SetOneAnswer(q21);
            q14.Questions.Add(q21);

            QuestionnaireQuestion q22 = new QuestionnaireQuestion("22", "Is he/she involved in social activities?", QuestionnaireQuestionAnswerType.OneAnswer);
            SetOneAnswer(q22);
            q14.Questions.Add(q22);

            QuestionnaireQuestion q23 = new QuestionnaireQuestion("23", "Did he/she fall in the last week?", QuestionnaireQuestionAnswerType.OneAnswer);
            SetOneAnswer(q23);
            q14.Questions.Add(q23);

            QuestionnaireQuestion q24 = new QuestionnaireQuestion("24", "Does he/she have difficulties in the speech?", QuestionnaireQuestionAnswerType.OneAnswer);
            SetOneAnswer(q24);
            q14.Questions.Add(q24);

            QuestionnaireQuestion q25 = new QuestionnaireQuestion("25", "Does he/she appear anxious or agitated?", QuestionnaireQuestionAnswerType.OneAnswer);
            SetOneAnswer(q25);
            q14.Questions.Add(q25);
            
            QuestionnaireQuestion q26 = new QuestionnaireQuestion("26", "Does he/she appear apathetic?", QuestionnaireQuestionAnswerType.OneAnswer);
            SetOneAnswer(q26);
            q14.Questions.Add(q26);

            QuestionnaireQuestion q27 = new QuestionnaireQuestion("27", "Does he/she sleep?", QuestionnaireQuestionAnswerType.OneAnswer);
            SetOneAnswer(q27);
            q14.Questions.Add(q27);

            QuestionnaireQuestion q28 = new QuestionnaireQuestion("28", "Does he/she have appetite?", QuestionnaireQuestionAnswerType.OneAnswer);
            SetOneAnswer(q28);
            q14.Questions.Add(q28);

            QuestionnaireQuestion q29 = new QuestionnaireQuestion("29", "Did he/she assume therapy every day in the last week?", QuestionnaireQuestionAnswerType.OneAnswer);
            SetOneAnswer(q29);
            q14.Questions.Add(q29);

            QuestionnaireQuestion q30 = new QuestionnaireQuestion("30", " Does he/she report side effects?", QuestionnaireQuestionAnswerType.FreeText);
            SetOneAnswer(q30);
            q14.Questions.Add(q30);

            QuestionnaireQuestion q31 = new QuestionnaireQuestion("31", "Any other problem (specify)?", QuestionnaireQuestionAnswerType.FreeText);
            SetOneAnswer(q31);
            q14.Questions.Add(q31);

            QuestionnaireQuestion q32 = new QuestionnaireQuestion("32", "Has it been necessary to visit Emergency, has the patient needed any non-programmed resource, visits to their doctor or a specialist, has hospital admission or to a Long Term Care Unit or Residential Centre been necessary?", QuestionnaireQuestionAnswerType.OneAnswer);
            SetOneAnswer(q32);
            q14.Questions.Add(q32);

            #endregion
            
            QuestionnaireQuestion[] questions = QuestionnaireQuestions.ToArray();

            q.Questions = questions;

            SerializeMe(q, "DailyQuestionnaire.xml");
            
        }

        private static void SetOneAnswer(QuestionnaireQuestion q1)
        {
            QuestionnaireQuestionAnswer yes = new QuestionnaireQuestionAnswer();
            yes.Value = "1";
            yes.Answer = "YES";
            QuestionnaireQuestionAnswer no = new QuestionnaireQuestionAnswer();
            no.Value = "0";
            no.Answer = "NO";
            q1.Answers = new QuestionnaireQuestionAnswer[] { yes, no };
        }

        private static void SetFrequencyAnswer(QuestionnaireQuestion q1)
        {
            QuestionnaireQuestionAnswer Never = new QuestionnaireQuestionAnswer();
            Never.Value = "0";
            Never.Answer = "Never";

            QuestionnaireQuestionAnswer Happened = new QuestionnaireQuestionAnswer();
            Happened.Value = "1";
            Happened.Answer = "Happened but not in the last week";

            QuestionnaireQuestionAnswer OneOrTwoTimes = new QuestionnaireQuestionAnswer();
            OneOrTwoTimes.Value = "2";
            OneOrTwoTimes.Answer = "1 or 2 times in the last week";

            QuestionnaireQuestionAnswer FromThreeToSix = new QuestionnaireQuestionAnswer();
            FromThreeToSix.Value = "3";
            FromThreeToSix.Answer = "From 3 to 6 times in the last week";


            QuestionnaireQuestionAnswer Everyday = new QuestionnaireQuestionAnswer();
            Everyday.Value = "4";
            Everyday.Answer = "Everyday";

            QuestionnaireQuestionAnswer NotApplicable = new QuestionnaireQuestionAnswer();
            NotApplicable.Value = "9";
            NotApplicable.Answer = "I don’t know/Not applicable";

            q1.Answers = new QuestionnaireQuestionAnswer[] { Never, Happened, OneOrTwoTimes, FromThreeToSix, Everyday, NotApplicable};
        }

        private static void SerializePatient()
        {
            Patient patient = new Patient();

            PersonData cd = new PersonData();
            cd.ID = Guid.NewGuid();
            cd.Surname = "Androulidakis";
            cd.Name = "Aggelos";

            List<Communication> communications = new List<Communication>();
            
            Communication commun1 = new Communication();
            commun1.IsPrimary = true;
            commun1.Type = CommunicationType.Phone;
            commun1.Value = "+302107722453";
            communications.Add(commun1);

            Communication commun2 = new Communication();
            commun2.IsPrimary = false;
            commun2.Value = "androu@biomed.ntua.gr";
            commun2.Type = CommunicationType.Email;
            communications.Add(commun2);

            cd.CommunicationList = new List<Communication>(communications);

            List<Address> addresses = new List<Address>();
            Address address = new Address();
            address.Street = "Patission";
            address.StreetNo = "42";
            address.City = "Athens";
            address.Country = "GR";
            address.Notes = "3rd floor";
            address.IsPrimary = true;
            address.ZipCode = "123-45";
            address.County = "Attica";
            addresses.Add(address);
            addresses.Add(address);

            List<Identifier> ids = new List<Identifier>();
            Identifier id = new Identifier();
            id.Type = IdentifierType.PassportID;
            id.Number = "AB202825";
            id.IssueDate = "17/02/2003";
            id.IssueAuthority = "ABC";
            ids.Add(id);
            ids.Add(id);

            cd.IdentifierList = ids;


            cd.AddressList = new List<Address>(addresses);

            patient.PersonData = cd;

            SocioDemographicData sd = new SocioDemographicData();
            sd.Age = 82;
            SystemParameter maritalStatus = new SystemParameter();
            maritalStatus.Code = 1;
            maritalStatus.Description = "widow";
            sd.MaritalStatus = maritalStatus;

            sd.Children = 2;
            SystemParameter sex = new SystemParameter();
            sex.Code = 1;
            sex.Description = "Male";

            sd.Gender = sex;

            SystemParameter livingWith = new SystemParameter();
            livingWith.Code = 1;
            livingWith.Description = "with son/daughter";

            sd.LivingWith = livingWith;

            patient.SD_Data = sd;


            Carer c1 = new Carer();
            c1.PersonData = patient.PersonData;
            c1.SD_Data = patient.SD_Data;

            PatientCaregiver pc1 = new PatientCaregiver();
            pc1.Caregiver = c1;
            pc1.IsPrimary = true;


            PatientCaregiver pc2 = new PatientCaregiver();
            pc2.Caregiver = c1;
            pc2.IsPrimary = false;

            patient.PatientCaregiverList.ListOfCaregivers.Add(pc1);
            patient.PatientCaregiverList.ListOfCaregivers.Add(pc2);

            Clinician respClinician = new Clinician();
            respClinician.PersonData = patient.PersonData;

            patient.ResponsibleClinician = respClinician;
            

            //PatientAssessment assessment = new PatientAssessment();
            //assessment.MMSE = 22;
            //assessment.DateOfAssessment = System.DateTime.Now;

            //patient.Assessments.ListOfAssessments.Add(assessment);

            SerializeMe(patient, "Patient.xml");
        }

        private static void SerializeMe(object o, string filename)
        {
            Type type = o.GetType();
            XmlSerializer serializer = new XmlSerializer(type, "http://aladdin.biomed.ntua.gr");
            MemoryStream stream = new MemoryStream();
            XmlDocument doc = new XmlDocument();
            serializer.Serialize(stream, o);
            stream.Position = 0;
            doc.Load(stream);
            stream.Close();
            doc.Save(filename);

        }
    }
}
