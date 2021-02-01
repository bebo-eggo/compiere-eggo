package com.audaxis.compiere.intervat;

import java.io.File;
import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import org.compiere.model.MClient;
import org.compiere.model.MOrg;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MYear;
import org.compiere.print.ReportServer;
import org.compiere.process.ProcessInfo;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.ProcessInfoUtil;
import org.compiere.util.DB;

import com.audaxis.compiere.intervat.declarators.YearToXml;
import com.audaxis.compiere.intervat.vo.YearElement;
import com.audaxis.compiere.process.ReportBatchModeInterface;
import com.audaxis.compiere.process.ReportServerOutputImpl;

/**
 * Redmine 34275
 */
public class YearDeclarator extends  ReportServerOutputImpl  implements
ReportBatchModeInterface, ReportServer {

	private int p_Z_TVAPeriode_ID;
	private BigDecimal p_BaseAmt_From;
	private BigDecimal p_BaseAmt_To;
	private int p_Z_Taxzone_ID;
	private int p_AD_Org_ID;
	private int p_AD_Client_ID;
	private boolean p_IsTenant;
	private int p_C_Year_ID;
	private MYear year;

	@Override
	protected void buildOutputFile() {

		ArrayList<YearElement> list = getDeclaration();
		//
		MClient client = MClient.get(getCtx(), p_AD_Client_ID);
		MOrg org = new MOrg(getCtx(), p_AD_Org_ID, get_Trx());
		MOrgInfo orginfo = MOrgInfo.get(getCtx(), p_AD_Org_ID, get_Trx());
		year = new MYear (getCtx(), p_C_Year_ID, null);

		//
		YearToXml t = new YearToXml();
		t.createDeclaration(getCtx(), new File(getOutputAbsoluteFileName()), client, org, year,  orginfo, p_IsTenant, list);

	}

        protected void prepare() {

		ProcessInfoParameter[] params = getParameter();

		for (ProcessInfoParameter para : params) {
			String name = para.getParameterName();
			if ("AD_Client_ID".equalsIgnoreCase(name))
				p_AD_Client_ID = para.getParameterAsInt();
			else if ("AD_Org_ID".equalsIgnoreCase(name))
				p_AD_Org_ID = para.getParameterAsInt();
			else if ("Z_TVAPeriode_ID".equalsIgnoreCase(name))
				p_Z_TVAPeriode_ID = para.getParameterAsInt();
			else if ("BASEAMT".equalsIgnoreCase(name)){
				p_BaseAmt_From = (BigDecimal)para.getParameter();
				p_BaseAmt_To = (BigDecimal)para.getParameter_To();
			}else if ("Z_Taxzone_ID".equalsIgnoreCase(name))
				p_Z_Taxzone_ID = para.getParameterAsInt();
			else if ("IsTenant".equalsIgnoreCase(name))
				p_IsTenant = "Y".equalsIgnoreCase((String)para.getParameter());
			else if ("C_Year_ID".equalsIgnoreCase(name))
				p_C_Year_ID = para.getParameterAsInt();
			else 
				log.severe("prepare - Unknown Parameter: " + name);
		}

	}

	private ArrayList<YearElement> getDeclaration(){
		ArrayList<YearElement> list = new ArrayList<YearElement>();
		StringBuffer sql = new StringBuffer("SELECT * FROM Z_VAT_YearBelgium ");
		if(p_IsTenant)
			sql.append("WHERE AD_Client_ID= ? AND Z_TVAPERIODE_ID = ? AND  TAXZONEID = ? ");
		else
			sql.append("WHERE AD_Client_ID= ? AND AD_Org_ID=? AND Z_TVAPERIODE_ID = ? AND  TAXZONEID = ? ");
		sql.append("AND BASEAMT >= ? AND BASEAMT <= ? ");
		//sql.append("AND IsTenant = '"+(p_IsTenant?"Y":"N")+"' ");
		sql.append("ORDER BY AD_Org_ID,IDTVA ");

		PreparedStatement pst = null;
		ResultSet rs = null;
		int index = 1;
		YearElement element = null;

		try {
			pst = DB.prepareStatement(sql.toString(), get_Trx());
			pst.setInt(index++, p_AD_Client_ID);
			if(!p_IsTenant)
				pst.setInt(index++, p_AD_Org_ID);
			pst.setInt(index++, p_Z_TVAPeriode_ID);
			pst.setInt(index++, p_Z_Taxzone_ID);
			pst.setBigDecimal(index++, p_BaseAmt_From);
			pst.setBigDecimal(index, p_BaseAmt_To);
			rs = pst.executeQuery();
			while (rs.next()) {
				element = new YearElement(!p_IsTenant?rs.getInt("AD_Org_ID"):p_AD_Org_ID, rs.getString("IDTVA"), rs.getString("name"), rs.getString("City"), rs.getString("CountryCode"),
						rs.getString("Postal"), rs.getString("Address"), rs.getString("Email"),rs.getString("Phone"), 
						rs.getBigDecimal("baseamt"), rs.getBigDecimal("taxamt"));
				list.add(element);
			}
		} catch (Exception e) {
			log.severe(e.getMessage());
		}

		return list;
	}

	@Override
	protected String getOutputFileNameSimple() {
		
		return "Declaration_"+year.getYearAsInt()+".xml";
	}


}
