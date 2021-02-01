/**
 * 
 */
package com.audaxis.compiere.eurocenter.acct.datasource;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import com.audaxis.compiere.eurocenter.acct.datasource.interfaces.XLSAcctDatasource;


/**
 * @author steven
 *
 */
public class AcctDummyXLSDatasource implements XLSAcctDatasource {

	/**
	 * 
	 */
	public AcctDummyXLSDatasource() 
	{
	}

	@Override
	public Map getXLSDatasource() {
		HashMap m = new HashMap();
		m.put("header", new DummyHeader());
		
		ArrayList<Record> records = new ArrayList<Record>();
 		for (int i=0;i<15;i++)
			records.add(new Record(i, "Value "+i));
 		m.put("records", records);
		
		return m;
	}
	
	public class DummyHeader
	{
		public String title = "title";
		public String date = "01/01/2014";
	}
	
	public class Record
	{
		public int id = 0;
		public String value = "";
		
		public Record(int id, String value)
		{
			this.id=id;
			this.value=value;
		}
	}
}
