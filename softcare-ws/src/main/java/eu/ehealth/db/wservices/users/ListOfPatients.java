package eu.ehealth.db.wservices.users;

import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;
import org.apache.log4j.Level;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import eu.ehealth.StorageComponentImpl;
import eu.ehealth.SystemDictionary;
import eu.ehealth.db.DbStorageComponent;
import eu.ehealth.db.xsd.PatientInfo;
import eu.ehealth.db.xsd.SearchCriteria;
import eu.ehealth.util.NullChecker;
import eu.ehealth.util.StorageComponentUtilities;


/**
 * 
 * @author a572832
 *
 */
public class ListOfPatients extends DbStorageComponent<List<PatientInfo>, Object>
{

	
	/**
	 * 
	 * @param session
	 */
	public ListOfPatients(Session session)
	{
		super(session);
	}

	
	@Override
	protected List<PatientInfo> dbStorageFunction(ArrayList<Object> lo)
	{
		try
		{
			List<SearchCriteria> filter = (List<SearchCriteria>) lo.get(0); 
			String userId = (String) lo.get(1);
			
			List<PatientInfo> l = new ArrayList<PatientInfo>();
			// DEBUG - TRACE
			if (SystemDictionary.APPLICATION_DEBUG_LEVEL == Level.DEBUG)
				StorageComponentUtilities.trace(Thread.currentThread().getStackTrace());

			NullChecker nc = new NullChecker();

			userId = nc.check(userId, String.class);

			for (int i = 0; i < filter.size(); i++)
			{
				filter.set(i, nc.check(filter.get(i), SearchCriteria.class));
			}

			if (!checkUserPermissions(userId, U_CLINICIAN, U_CARER, U_ADMIN))
			{
				return l;
			}

			try
			{
				List<Field> fl = new ArrayList<Field>();
				fl.addAll(java.util.Arrays.asList(eu.ehealth.db.db.PersonData.class.getDeclaredFields()));
				fl.addAll(java.util.Arrays.asList(eu.ehealth.db.db.SocioDemographicData.class.getDeclaredFields()));
				fl.addAll(java.util.Arrays.asList(eu.ehealth.db.db.Address.class.getDeclaredFields()));
				fl.addAll(java.util.Arrays.asList(eu.ehealth.db.db.Communication.class.getDeclaredFields()));
				fl.addAll(java.util.Arrays.asList(eu.ehealth.db.db.Identifier.class.getDeclaredFields()));
				fl.addAll(java.util.Arrays.asList(eu.ehealth.db.db.Patient.class.getDeclaredFields()));

				String sql = "SELECT p.id FROM patient p LEFT JOIN persondata pd ON (pd.id = p.persondata) LEFT JOIN address a ON (a.persondata = pd.id) LEFT JOIN communication c ON (c.persondata = pd.id) LEFT JOIN identifier i ON (i.persondata = pd.id) LEFT JOIN sociodemographicdata sd ON (sd.id = p.sd) WHERE ";

				SearchCriteria[] sc = filter.toArray(new SearchCriteria[filter.size()]);
				for (int i = 0; i < sc.length; i++)
				{
					if (sc[i].getFieldName() == null)
						continue;

					for (int j = 0; j < fl.size(); j++)
					{
						if (fl.get(j).getName().compareToIgnoreCase(sc[i].getFieldName()) == 0)
						{
							Integer opnum = new Integer(sc[i].getCompareOp().getCode());
							sql += String.format(StorageComponentImpl.operationsMap.get(opnum), sc[i].getFieldName(), sc[i]
											.getFieldValue1(), sc[i].getFieldValue2());
							sql += " AND ";
						}
					}
					if (sc[i].getFieldName().compareToIgnoreCase("patient.id") == 0)
					{
						Integer opnum = new Integer(sc[i].getCompareOp().getCode());
						sql += String.format(StorageComponentImpl.operationsMap.get(opnum), "p.id", sc[i].getFieldValue1(), sc[i].getFieldValue2());
						sql += " AND ";
					}
				}
				sql += " 1=1 GROUP BY p.id, p.persondata, p.clinician, p.sd";

				Object[] ql = _session.createSQLQuery(sql).list().toArray();
				for (int i = 0; i < ql.length; i++)
				{
					Integer id = (Integer) ql[i];
					eu.ehealth.db.db.Patient p = (eu.ehealth.db.db.Patient) _session.load(eu.ehealth.db.db.Patient.class, id);
					PatientInfo qi = new PatientInfo();
					qi.setID(p.getId().toString());
					qi.setSurname(p.getM_PersonData().getSurname());
					qi.setName(p.getM_PersonData().getName());

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

			return null;
		}
	}
	

}
