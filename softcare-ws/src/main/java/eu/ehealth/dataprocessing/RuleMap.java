package eu.ehealth.dataprocessing;

import javax.xml.bind.annotation.XmlType;


/**
 * Java class for RuleMap complex type.
 * 
 */
@XmlType(name = "Rule", propOrder = { "dataType", "callerID", "lowerLimit", "upperLimit", "getPrevious", "highRiskThresh" })
public class RuleMap
{


	protected String dataType;
	protected int callerID;
	protected double lowerLimit;
	protected double upperLimit;
	protected boolean getPrevious;
	protected Double highRiskThresh;


	/**
	 * Gets the value of the dataType property.
	 * 
	 * @return possible object is {@link String }
	 * 
	 */
	public String getDataType()
	{
		return dataType;
	}


	/**
	 * Sets the value of the dataType property.
	 * 
	 * @param value allowed object is {@link String }
	 * 
	 */
	public void setDataType(String value)
	{
		this.dataType = value;
	}


	/**
	 * Gets the value of the callerID property.
	 * 
	 */
	public int getCallerID()
	{
		return callerID;
	}


	/**
	 * Sets the value of the callerID property.
	 * 
	 */
	public void setCallerID(int value)
	{
		this.callerID = value;
	}


	/**
	 * Gets the value of the lowerLimit property.
	 * 
	 */
	public double getLowerLimit()
	{
		return lowerLimit;
	}


	/**
	 * Sets the value of the lowerLimit property.
	 * 
	 */
	public void setLowerLimit(double value)
	{
		this.lowerLimit = value;
	}


	/**
	 * Gets the value of the upperLimit property.
	 * 
	 */
	public double getUpperLimit()
	{
		return upperLimit;
	}


	/**
	 * Sets the value of the upperLimit property.
	 * 
	 */
	public void setUpperLimit(double value)
	{
		this.upperLimit = value;
	}


	/**
	 * Gets the value of the getPrevious property.
	 * 
	 */
	public boolean isGetPrevious()
	{
		return getPrevious;
	}


	/**
	 * Sets the value of the getPrevious property.
	 * 
	 */
	public void setGetPrevious(boolean value)
	{
		this.getPrevious = value;
	}


	/**
	 * Gets the value of the highRiskThresh property.
	 * 
	 * @return possible object is {@link Double }
	 * 
	 */
	public Double getHighRiskThresh()
	{
		return highRiskThresh;
	}


	/**
	 * Sets the value of the highRiskThresh property.
	 * 
	 * @param value allowed object is {@link Double }
	 * 
	 */
	public void setHighRiskThresh(Double value)
	{
		this.highRiskThresh = value;
	}

}
