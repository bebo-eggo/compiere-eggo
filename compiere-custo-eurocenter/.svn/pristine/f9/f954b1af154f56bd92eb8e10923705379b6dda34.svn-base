/**
 * 
 */
package com.audaxis.compiere.eurocenter.acct.datasource;

import java.math.BigDecimal;
import java.math.MathContext;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Random;

import com.audaxis.compiere.eurocenter.acct.datasource.interfaces.AcctDatasource;
import com.audaxis.compiere.eurocenter.acct.datasource.vo.AcctElementVO;
import com.audaxis.compiere.eurocenter.acct.datasource.vo.AcctVO;

/**
 * @author steven
 *
 */
public class AcctDummyXLSPartnerGLDatasource extends AcctDatasource {

	/**
	 * 
	 */
	public AcctDummyXLSPartnerGLDatasource() 
	{
		super();
	}


	
	@Override
	protected AcctElementVO getHeader() 
	{
		AcctElementVO header = new AcctElementVO();
		header.addValue("C_BP_GROUP_FROM", "GSA 123");
		header.addValue("C_BP_GROUP_TO", "GSA 999");
		header.addValue("RANGEDATE", "01/01/2014 - 31/12/2014");
		header.addValue("YEAREXERCICE", "2014");
		header.addValue("SHOWBEGINNINGBALANCE", "OUI");
		header.addValue("TODAY", new SimpleDateFormat("dd/MM/yyyy - HH:mm:ss").format(new Date(System.currentTimeMillis())));
		return header;
	}
	
	@Override
	protected ArrayList<AcctVO> getLines()
	{
		ArrayList<AcctVO> partners = new ArrayList<AcctVO>();
		
		Random rand = new Random();
		int j = 0;
		String bpValue = null;
		String bpName= null;
		BigDecimal Total = BigDecimal.ZERO;
		
		HashMap<String, BigDecimal> totals = new HashMap<String, BigDecimal>();
		
		for (int i=0; i<100; i++ )
		{
			AcctElementVO record = new AcctElementVO();

			if (i%10==0)
			{
				bpValue = "bpValue"+i/10;
				bpName = "bpName"+i/10;
				j=0;
				Total=BigDecimal.ZERO;
			}

			record.addValue("BPVALUE", bpValue);
			record.setGroupBy1("BPVALUE");
			record.addValue("BPNAME", bpName);

			
			// set set set
			record.addValue("LINENO", j++);
			record.addValue("DATEACCT", new Timestamp(System.currentTimeMillis()));
			int z = rand.nextInt(3);
			if (z%2==0)
				record.addValue("JOURNAL","VENTE GSA");
			else
				record.addValue("JOURNAL","VENTE WEB");
			if (z%2==0)
				record.addValue("DOCUMENTNO","GSA0000"+i);
			else
				record.addValue("DOCUMENTNO","WEB0000"+1);

			record.addValue("DESCRIPTION","DESCRIPTION BLA BLA BLA" + record.getValueAsString("DocumentNo"));
			
			record.addValue("ACCOUNTNO", (i%8+1) + "000"+i);
			

			BigDecimal acctAmt = BigDecimal.valueOf(rand.nextInt(989900)+100);
			acctAmt = acctAmt.divide(BigDecimal.valueOf(100),2,  BigDecimal.ROUND_HALF_UP);
			int x = rand.nextInt(3);
			if (x%3==1)
			{
				record.addValue("CURRENCY", "EUR");
				record.addValue("RATE", BigDecimal.ONE);
			}
			else if (x%3==2)
			{
				record.addValue("CURRENCY", "USD");
				record.addValue("RATE", BigDecimal.valueOf(Double.valueOf("1.35456")));
			}
			else
			{
				record.addValue("CURRENCY", "HKD");
				record.addValue("RATE", BigDecimal.valueOf(Double.valueOf("110.52485")));
			}

			int y = rand.nextInt(2);
			if (x%2==0)
			{
				record.addValue("AMTACCTDR", acctAmt);
				record.addValue("AMTSOURCEDR", record.getValueAsBigDecimal("AMTACCTDR").divide(record.getValueAsBigDecimal("RATE"), BigDecimal.ROUND_HALF_UP));
				record.addValue("AMTSOURCECR", BigDecimal.ZERO);
				record.addValue("AMTACCTCR", BigDecimal.ZERO);
			}
			else
			{
				record.addValue("AMTACCTCR", acctAmt);
				record.addValue("AMTSOURCECR", record.getValueAsBigDecimal("AMTACCTCR").divide(record.getValueAsBigDecimal("RATE"), BigDecimal.ROUND_HALF_UP));
				record.addValue("AMTSOURCEDR", BigDecimal.ZERO);
				record.addValue("AMTACCTDR", BigDecimal.ZERO);
			}
			
			
			// compute cumul
			Total = Total.add(record.getValueAsBigDecimal("AMTACCTDR").subtract(record.getValueAsBigDecimal("AMTACCTCR"), MathContext.DECIMAL128));
			record.addValue("CUMULACCT", Total);
			totals.put(bpValue, Total);
			partners.add(record);
		}
		for(int i=0; i<partners.size();i++)
			partners.get(i).addValue("TOTAL", totals.get(partners.get(i).getValueAsString("BPVALUE")));
		
		
		return partners;
	}



	@Override
	protected void computeLine(AcctVO vo) {
	}
	@Override
	protected void computeAllLines(ArrayList<AcctVO> lines) {
	}



	@Override
	protected String getSql() {
		return "";
	}



	@Override
	protected String[] getParamNames() {
		return null;
	}
}
