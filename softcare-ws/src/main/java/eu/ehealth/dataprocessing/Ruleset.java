package eu.ehealth.dataprocessing;

import java.util.ArrayList;
import java.util.List;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;


/**
 * Java class for Ruleset complex type.
 * 
 */
@XmlRootElement
public class Ruleset
{


	protected List<RuleMap> rule;
	protected Integer version;


	/**
	 * 
	 * @return
	 */
	@XmlElement(name = "Rule")
	public List<RuleMap> getRule()
	{
		if (rule == null)
		{
			rule = new ArrayList<RuleMap>();
		}
		return this.rule;
	}
	
	
	/**
	 * 
	 * @param l
	 */
	public void setRule(List<RuleMap> l) {
		this.rule = l;
	}


	/**
	 * Gets the value of the version property.
	 * 
	 * @return possible object is {@link Integer }
	 * 
	 */
	public Integer getVersion()
	{
		return version;
	}


	/**
	 * Sets the value of the version property.
	 * 
	 * @param value allowed object is {@link Integer }
	 * 
	 */
	public void setVersion(Integer value)
	{
		this.version = value;
	}

	
}
