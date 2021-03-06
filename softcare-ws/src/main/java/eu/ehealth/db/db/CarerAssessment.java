package eu.ehealth.db.db;
// Generated Oct 1, 2013 11:39:06 AM by Hibernate Tools 3.2.4.GA


import java.sql.Timestamp;

/**
 * CarerAssessment generated by hbm2java
 */
public class CarerAssessment  implements java.io.Serializable {


     private Integer id;
     private Integer carer;
     private Timestamp DateOfAssessment;
     private String RelevantHealthProblem;
     private Integer SeverityOfBurden;
     private String EmotionalOrMentalDisorder;
     private String PsychoactiveDrugs;
     private Integer QualityOfLife;
     private Integer clinician;
     private Carer m_Carer;
     private Clinician m_Clinician;

    public CarerAssessment() {
    }

    public CarerAssessment(Integer carer, Timestamp DateOfAssessment, String RelevantHealthProblem, Integer SeverityOfBurden, String EmotionalOrMentalDisorder, String PsychoactiveDrugs, Integer QualityOfLife, Integer clinician, Carer m_Carer, Clinician m_Clinician) {
       this.carer = carer;
       this.DateOfAssessment = DateOfAssessment;
       this.RelevantHealthProblem = RelevantHealthProblem;
       this.SeverityOfBurden = SeverityOfBurden;
       this.EmotionalOrMentalDisorder = EmotionalOrMentalDisorder;
       this.PsychoactiveDrugs = PsychoactiveDrugs;
       this.QualityOfLife = QualityOfLife;
       this.clinician = clinician;
       this.m_Carer = m_Carer;
       this.m_Clinician = m_Clinician;
    }
   
    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }
    public Integer getCarer() {
        return this.carer;
    }
    
    public void setCarer(Integer carer) {
        this.carer = carer;
    }
    public Timestamp getDateOfAssessment() {
        return this.DateOfAssessment;
    }
    
    public void setDateOfAssessment(Timestamp DateOfAssessment) {
        this.DateOfAssessment = DateOfAssessment;
    }
    public String getRelevantHealthProblem() {
        return this.RelevantHealthProblem;
    }
    
    public void setRelevantHealthProblem(String RelevantHealthProblem) {
        this.RelevantHealthProblem = RelevantHealthProblem;
    }
    public Integer getSeverityOfBurden() {
        return this.SeverityOfBurden;
    }
    
    public void setSeverityOfBurden(Integer SeverityOfBurden) {
        this.SeverityOfBurden = SeverityOfBurden;
    }
    public String getEmotionalOrMentalDisorder() {
        return this.EmotionalOrMentalDisorder;
    }
    
    public void setEmotionalOrMentalDisorder(String EmotionalOrMentalDisorder) {
        this.EmotionalOrMentalDisorder = EmotionalOrMentalDisorder;
    }
    public String getPsychoactiveDrugs() {
        return this.PsychoactiveDrugs;
    }
    
    public void setPsychoactiveDrugs(String PsychoactiveDrugs) {
        this.PsychoactiveDrugs = PsychoactiveDrugs;
    }
    public Integer getQualityOfLife() {
        return this.QualityOfLife;
    }
    
    public void setQualityOfLife(Integer QualityOfLife) {
        this.QualityOfLife = QualityOfLife;
    }
    public Integer getClinician() {
        return this.clinician;
    }
    
    public void setClinician(Integer clinician) {
        this.clinician = clinician;
    }
    public Carer getM_Carer() {
        return this.m_Carer;
    }
    
    public void setM_Carer(Carer m_Carer) {
        this.m_Carer = m_Carer;
    }
    public Clinician getM_Clinician() {
        return this.m_Clinician;
    }
    
    public void setM_Clinician(Clinician m_Clinician) {
        this.m_Clinician = m_Clinician;
    }




}


