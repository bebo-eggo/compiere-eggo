package com.audaxis.compiere.eurocenter.acct.datasource;

import java.math.BigDecimal;
import java.math.MathContext;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import org.compiere.model.MDocType;
import org.compiere.util.Ctx;
import org.compiere.util.DB;
import org.compiere.util.Trx;

import com.audaxis.compiere.eurocenter.acct.datasource.interfaces.AcctDatasource;
import com.audaxis.compiere.eurocenter.acct.datasource.sql.PartnerGLJournalSql;
import com.audaxis.compiere.eurocenter.acct.datasource.vo.AcctElementVO;
import com.audaxis.compiere.eurocenter.acct.datasource.vo.AcctVO;
import com.audaxis.compiere.eurocenter.acct.util.ExportHelper;
import com.audaxis.compiere.eurocenter.acct.util.ParamHelper;

public class PartnerGLJournalDatasource extends AcctDatasource
{

    public PartnerGLJournalDatasource(Ctx ctx, Trx trx, Map<String, Object> params)
    {
        super(ctx, trx, params);
    }

    protected AcctVO getHeader()
    {

        Timestamp dateFrom = ParamHelper.getTimestamp(params, "DATEREPORT");
        Timestamp dateTo = ParamHelper.getTimestamp(params, "DATEREPORT_TO");
        params.put("DATEFROM", dateFrom);
        params.put("DATETO", dateTo);

        AcctElementVO header = new AcctElementVO();

        int C_BPartner_ID = ParamHelper.getInteger(params, "C_BPARTNER_ID");
        if (C_BPartner_ID > 0)
        {
            String Partner = DB.getSQLValueString(trx, "SELECT Name FROM C_BPartner WHERE C_BPartner_ID=?", C_BPartner_ID);
            header.addValue("PARTNER", Partner);
        }
        else
        {
            String BP_GROUP_FROM = "";
            int C_BP_Group_From_ID = ParamHelper.getInteger(params, "C_BP_GROUP_ID");
            if (C_BP_Group_From_ID > 0)
                BP_GROUP_FROM = DB.getSQLValueString(trx, "SELECT Value FROM C_BP_Group WHERE C_BP_Group_ID=?", C_BP_Group_From_ID);
            String BP_GROUP_TO = "";
            int C_BP_Group_To_ID = ParamHelper.getInteger(params, "C_BP_GROUP_ID_TO");
            if (C_BP_Group_To_ID > 0)
                BP_GROUP_TO = DB.getSQLValueString(trx, "SELECT Value FROM C_BP_Group WHERE C_BP_Group_ID=?", C_BP_Group_To_ID);

            header.addValue("C_BP_GROUP_FROM", BP_GROUP_FROM);
            header.addValue("C_BP_GROUP_TO", BP_GROUP_TO);
            params.put("C_BP_GROUP_FROM", BP_GROUP_FROM);
            params.put("C_BP_GROUP_TO", BP_GROUP_TO);
            header.addValue("PARTNER", ExportHelper.createRangeString(BP_GROUP_FROM, BP_GROUP_TO));
        }

        header.addValue("RANGEDATE", ExportHelper.createRangeDate(dateFrom, dateTo));
        header.addValue("YEAREXERCICE", ExportHelper.sdf_year.format(dateFrom));
        header.addValue("TODAY", ExportHelper.sdf_datetime.format(new Date(System.currentTimeMillis())));
        header.addValue("SHOWBEGINNINGBALANCE", ParamHelper.getBooleanAsString(params, "SHOWBEGINNINGBALANCE", 3));

        return header;

    }

    protected void computeAllLines(ArrayList<AcctVO> lines)
    {
        if (lines == null || lines.size() == 0)
            return ;
        //        //Sorting
        //        Collections.sort(lines, new Comparator<AcctVO>() {
        //                @Override
        //                public int compare(AcctVO  vo1, AcctVO vo2)
        //                {
        //
        //                    return  vo1.getValueAsString(sortBy).compareTo(vo1.getValueAsString(sortBy));
        //                }
        //            });

       
       
        // Process ShowBeginningBalance flag
        if(!(ParamHelper.getBoolean(params, "Z_GROUPTRXAUTO")))
        {
        if (!ParamHelper.getBoolean(params, "SHOWBEGINNINGBALANCE"))
        {
            ArrayList<AcctVO> toRemove = new ArrayList<AcctVO>();

            String oldPartnerValue = "";
            for (int i=0;i<lines.size();i++)
            {
                AcctVO record = lines.get(i);
                String newPartnerValue = record.getValueAsString("BPVALUE");

                // First line of each partner
                if (! oldPartnerValue.equalsIgnoreCase(newPartnerValue) )
                {
                    if ((i == lines.size()-1) || (!newPartnerValue.equalsIgnoreCase(lines.get(i+1).getValueAsString("BPVALUE"))))
                    {
                       
                        // only 1 line for this partner => Keep Line but blank it
                        record.addValue("DATEACCT", null);
                        record.addValue("JOURNAL", null);
                        record.addValue("DOCUMENTNO", null);
                        record.addValue("DESCRIPTION", null);
                        record.addValue("ISBLANKLINE", true);
	                    record.addValue("AMTACCTDR", null);
						record.addValue("AMTACCTCR", null);
						record.addValue("CUMULACCT", null);
                    }
                    else
                    {
                        // this line is to delete
                        toRemove.add(lines.get(i));
                    }
                    oldPartnerValue = newPartnerValue;
                }
            }
            for(int i=0;i<toRemove.size();i++)
                lines.remove(toRemove.get(i));
        }       
       
   
        }
       
        else
        {
            BigDecimal SUMAMTACCTCR =BigDecimal.ZERO;
            BigDecimal SUMAMTACCTDR=BigDecimal.ZERO;
            BigDecimal SUMAMTACCT=BigDecimal.ZERO;
            BigDecimal cumul=BigDecimal.ZERO;
            String oldPartnerValue = "";
            String oldDocTypevalue="";
            ArrayList<AcctVO> toRemove = new ArrayList<AcctVO>();
            for (int i=0;i<lines.size();i++)
            {       
                AcctVO record = lines.get(i);
                String newPartnerValue = record.getValueAsString("BPVALUE");

                // First line of each partner
           
                if (! oldPartnerValue.equalsIgnoreCase(newPartnerValue) )
                {
                    if (!ParamHelper.getBoolean(params, "SHOWBEGINNINGBALANCE"))
                    {
                    if ((i == lines.size()-1) || (!newPartnerValue.equalsIgnoreCase(lines.get(i+1).getValueAsString("BPVALUE"))))
                    {
                       
                        // only 1 line for this partner => Keep Line but blank it
                        record.addValue("DATEACCT", null);
                        record.addValue("JOURNAL", null);
                        record.addValue("DOCUMENTNO", null);
                        record.addValue("DESCRIPTION", null);
                        record.addValue("ISBLANKLINE", true);
                        record.addValue("AMTACCTDR", null);
						record.addValue("AMTACCTCR", null);
						record.addValue("CUMULACCT", null);
						record.addValue("AMTACCT", null);
                    }
                    else
                    {
                        // this line is to delete
                        toRemove.add(lines.get(i));
                    }
                    }
                    oldPartnerValue = newPartnerValue;
                }
               
                else //même Tiers
                {
                    MDocType doctype = null;
                   
                     //60817
                     String newDocTypevalue=record.getValueAsString("JOURNAL");
                     String sql1="select c_doctype_id from c_doctype where name like ?";
                     doctype=new MDocType(ctx, DB.getSQLValue(trx, sql1,record.getValueAsString("JOURNAL")) ,trx);
                     if  (doctype!=null && doctype.get_ValueAsBoolean("Z_GroupAuto")==true && newPartnerValue!=null )
                        {                                               
                            record.addValue("BPVALUE", null);                    
                            record.addValue("DATEACCT", null);               
                            record.addValue("DOCUMENTNO", null);
                            record.addValue("DESCRIPTION", null);
                            record.addValue("CURRENCY", null);
                            record.addValue("RATE", null);
                            record.addValue("ISBLANKLINE", false);                        
                            if (!oldDocTypevalue.equalsIgnoreCase(newDocTypevalue))
                            {                                   
                                 SUMAMTACCTCR=SUMAMTACCTCR.add(record.getValueAsBigDecimal("AMTACCTCR"));
                                 SUMAMTACCTDR=SUMAMTACCTDR.add(record.getValueAsBigDecimal("AMTACCTDR")); 
                            	SUMAMTACCT=SUMAMTACCT.add(record.getValueAsBigDecimal("AMTACCT"));                            	                         
                                if (!newDocTypevalue.equalsIgnoreCase(lines.get(i+1).getValueAsString("JOURNAL")))           
                                  {
                                    record.addValue("BPVALUE",newPartnerValue);   
                                    record.addValue("AMTACCTCR",SUMAMTACCTCR);
                                    record.addValue("AMTSOURCECR", null);
                                    record.addValue("AMTSOURCEDR", null);                          
                                    record.addValue("AMTACCTDR", SUMAMTACCTDR);
                                    record.addValue("ISBLANKLINE", false);
                                    record.addValue("ACCOUNTNO", null);                            
                                    record.addValue("AMTACCT", SUMAMTACCT);
                                    record.addValue("CUMULACCT", SUMAMTACCT);
                                    record.addValue("JOURNAL", doctype.getName());
                                    SUMAMTACCTCR=BigDecimal.ZERO;
                                    SUMAMTACCTDR=BigDecimal.ZERO;
                                    SUMAMTACCT=BigDecimal.ZERO;                                   
                                  }
                                else
                                    toRemove.add(lines.get(i));
                       

                           
                            }
                            else
                            {
                               SUMAMTACCTCR=SUMAMTACCTCR.add(record.getValueAsBigDecimal("AMTACCTCR"));
                               SUMAMTACCTDR=SUMAMTACCTDR.add(record.getValueAsBigDecimal("AMTACCTDR"));                                 
                            	SUMAMTACCT=SUMAMTACCT.add(record.getValueAsBigDecimal("AMTACCT"));                        
                                if ((i == lines.size()-1)||!newDocTypevalue.equalsIgnoreCase(lines.get(i+1).getValueAsString("JOURNAL")))           
                                  {
                                   
                                    record.addValue("BPVALUE",newPartnerValue);                               
                                    record.addValue("AMTACCTCR",SUMAMTACCTCR);                              
                                    record.addValue("AMTACCTDR", SUMAMTACCTDR);
                                    record.addValue("AMTSOURCECR", null);
                                    record.addValue("AMTSOURCEDR", null);
                                    record.addValue("ACCOUNTNO", null);                                 
                                    record.addValue("AMTACCT", SUMAMTACCT);
                                    record.addValue("CUMULACCT", SUMAMTACCT);
                                    record.addValue("ISBLANKLINE", false);                                                   
                                    record.addValue("JOURNAL", doctype.getName());
                                    SUMAMTACCTCR=BigDecimal.ZERO;
                                    SUMAMTACCTDR=BigDecimal.ZERO;
                                    SUMAMTACCT=BigDecimal.ZERO;
                                  
                                    
                                  }
                               
                                    else
                                        toRemove.add(lines.get(i));
                               
                            }
                            oldDocTypevalue = newDocTypevalue;   
                            }
                 
                     else
                         record.addValue("BPNAME", null);
                }
               
               
            }
            for(int i=0;i<toRemove.size();i++)
                lines.remove(toRemove.get(i));
       
           
        }
        HashMap<String, BigDecimal> totals = new HashMap<String, BigDecimal>();

        int lineNo = 0;
        String  oldPartnerValue = "";
        BigDecimal  cumul = BigDecimal.ZERO;
       
       	for (int i=0; i<lines.size(); i++)
		{

			AcctVO record = lines.get(i);

			boolean isBlankLine = record.getValueAsBoolean("ISBLANKLINE");
			if (isBlankLine)
				continue;
			
			String newPartnerValue = record.getValueAsString("BPVALUE");
			if (! oldPartnerValue.equalsIgnoreCase(newPartnerValue))
			{
				oldPartnerValue = newPartnerValue;
				lineNo=0;
				cumul = BigDecimal.ZERO;
			}
			record.addValue("LINENO", lineNo);
			cumul = cumul.add(record.getValueAsBigDecimal("AMTACCT"), MathContext.DECIMAL128);
			totals.put(oldPartnerValue, cumul);
			record.addValue("CUMULACCT", cumul);
			lineNo++;
		}

        for (int i=0; i<lines.size(); i++)
        {
            BigDecimal total = totals.get(lines.get(i).getValueAsString("BPVALUE"));
            if (total != null)
                lines.get(i).addValue("TOTAL", total);               
        }
    }
  
   protected void computeLine(AcctVO vo)
	{
		vo.addValue("AMTSOURCEDR", BigDecimal.ZERO);
		vo.addValue("AMTSOURCECR", BigDecimal.ZERO);
		vo.addValue("AMTACCTDR", BigDecimal.ZERO);
		vo.addValue("AMTACCTCR", BigDecimal.ZERO);
		vo.addValue("CUMULACCT", BigDecimal.ZERO);
		vo.addValue("TOTAL", BigDecimal.ZERO);
		
       if(vo.getValueAsString("JOURNAL")!=null &&  vo.getValueAsString("JOURNAL").equalsIgnoreCase("aaaaa-Cumuls antérieurs"))
           vo.addValue("JOURNAL", "Cumuls antérieurs");
		if (vo.getValue("AMTSOURCE") == null)
			vo.addValue("AMTSOURCE", BigDecimal.ZERO);
		if (vo.getValue("AMTACCT") == null)
			vo.addValue("AMTACCT", BigDecimal.ZERO);
		if (vo.getValue("RATE") == null)
			vo.addValue("RATE", BigDecimal.ZERO);
		
		BigDecimal amtAcct = vo.getValueAsBigDecimal("AMTACCT");
		if (amtAcct.compareTo(BigDecimal.ZERO) >= 0)
			vo.addValue("AMTACCTDR", amtAcct);
		else
			vo.addValue("AMTACCTCR", amtAcct.negate(MathContext.DECIMAL128));

		if (vo.getValueAsBoolean("BEGININGBALANCE"))
		{
			vo.addValue("AMTSOURCECR", null);
			vo.addValue("AMTSOURCEDR", null);
			vo.addValue("RATE", null);
		}
		else
		{
			BigDecimal amtSource = vo.getValueAsBigDecimal("AMTSOURCE");
			if (amtSource.compareTo(BigDecimal.ZERO) >= 0)
				vo.addValue("AMTSOURCEDR", amtSource);
			else
				vo.addValue("AMTSOURCECR", amtSource.negate(MathContext.DECIMAL128));
		}
		
		vo.setGroupBy1("BPVALUE");

	}

    @Override
	protected AcctVO getFooter(AcctVO header, ArrayList<AcctVO> lines) 
	{
		AcctVO footer = new AcctElementVO();
		BigDecimal total = BigDecimal.ZERO;
		String oldPartnerValue = "";
		if (lines!=null)
		{
			for (AcctVO vo: lines)
			{
				if (! oldPartnerValue.equalsIgnoreCase(vo.getValueAsString("BPVALUE")))
				{
					oldPartnerValue = vo.getValueAsString("BPVALUE");
					BigDecimal pTotal = vo.getValueAsBigDecimal("TOTAL");
					if (pTotal != null)
						total = total.add(pTotal, MathContext.DECIMAL128);
				}
			}
		}
		
		footer.addValue("TOTALGENERAL", total);
		return footer;
	}

	@Override
	protected String getSql() {
		return PartnerGLJournalSql.sql;
	}

	@Override
	protected String[] getParamNames() {
		return PartnerGLJournalSql.paramNames;
	}
	
	
}
   
