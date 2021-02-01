package com.audaxis.compiere.eurocenter.process;

import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;

import org.compiere.model.MOrder;
import org.compiere.model.X_XX_CleanUnPaid;
import org.compiere.util.DB;
import org.compiere.util.Env;

import com.audaxis.compiere.process.SvrProcessExtended;

public class CleanUnpaid extends SvrProcessExtended {

	private int Org_ID = 0;
	private int Client_ID = 0;
	private int Order_ID = 0;
	private BigDecimal AmountFrom = Env.ZERO;
	private BigDecimal AmountTo = Env.ZERO;
	
	private int nbOrder = 0;
	
	private int DocType_ID = 0;
	
	
	@Override
	protected void prepare() {
		// TODO Auto-generated method stub
		Client_ID = getParameterAsInt("AD_Client_ID");
		Org_ID = getParameterAsInt("AD_Org_ID");
		Order_ID = getParameterAsInt("C_Order_ID");
		AmountFrom = getParameterAsBD("Amount");
		AmountTo = getParameter_ToAsBD("Amount");
		DocType_ID =  getParameterAsInt("C_DocType_ID");
		
		DB.executeUpdate("TRUNCATE TABLE XX_CleanUnPaid", null);
	}

	@Override
	protected String doIt() throws Exception {
		// TODO Auto-generated method stub
		
		String sql = "Select AD_CLIENT_ID, AD_ORG_ID, C_ORDER_ID, DOCUMENTNO, SOLDE from ZRV_UNPAID ";
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		if(AmountFrom.equals(Env.ZERO) && AmountTo.equals(Env.ZERO) && Order_ID<=0)
		{
			return "Parametres minimuns manquants ! ";
		}
		
		if(Order_ID>0)
		{
			sql = sql+" where C_Order_Id = ? ";
			pstmt = DB.prepareStatement (sql.toString(), get_TrxName());
			pstmt.setInt (1, Order_ID);
			rs = pstmt.executeQuery();
			String ODV = "";
			boolean found = false;
			try{
				if (rs.next()){
					MOrder mo = new MOrder(getCtx(), Order_ID, get_Trx());
					BigDecimal z = mo.get_ValueAsBigDecimal("Z_PayGI")==null?Env.ZERO:mo.get_ValueAsBigDecimal("Z_PayGI");
					mo.set_ValueNoCheck("Z_PayGI", z.add(rs.getBigDecimal("SOLDE")));
					mo.save();
					ODV = mo.getDocumentNo();
					found = true;
					X_XX_CleanUnPaid xx = new X_XX_CleanUnPaid(getCtx(), 0, get_Trx());
					xx.setAD_Org_ID(Org_ID);
					xx.setAmount(Env.ZERO);
					xx.setZ_PayGI(z);
					xx.setC_Order_ID(Order_ID);
					xx.setC_DocType_ID(DocType_ID);
					xx.save();
					nbOrder++;
				}
			}
			catch (SQLException e)
			{
				log.log(Level.SEVERE, sql.toString(), e);
			}	
			finally{
				DB.closeResultSet(rs);
				DB.closeStatement(pstmt);
				pstmt = null;
			}
			//if(found)
			//	addLog("ODV MAJ : "+ODV);
			return "Nombre d'ODV modifé : "+nbOrder;
		}
		if(Order_ID<=0 && !AmountFrom.equals(Env.ZERO) && !AmountTo.equals(Env.ZERO))
		{
			sql = sql+" where AD_Client_ID = ? ";
			if(Org_ID>0)
				sql = sql+" and AD_Org_ID = ? ";
			if(DocType_ID>0)
				sql = sql+" and C_DocType_ID = ? ";
			sql = sql+" and round(SOLDE,2) between round(?,2) and round(?,2) ";
			pstmt = DB.prepareStatement (sql.toString(), get_TrxName());
			int i = 1;
			pstmt.setInt (i++, Client_ID);
			if(Org_ID>0)
				pstmt.setInt(i++, Org_ID);
			if(DocType_ID>0)
				pstmt.setInt(i++, DocType_ID);
			pstmt.setBigDecimal(i++, AmountFrom);
			pstmt.setBigDecimal(i++, AmountTo);			
			
			rs = pstmt.executeQuery();
			String ODV = "";
			boolean found = false;
			try{
				while(rs.next()){
					MOrder mo = new MOrder(getCtx(), rs.getInt(3), get_Trx());
					BigDecimal z = mo.get_ValueAsBigDecimal("Z_PayGI")==null?Env.ZERO:mo.get_ValueAsBigDecimal("Z_PayGI");
					mo.set_ValueNoCheck("Z_PayGI", z.add(rs.getBigDecimal("SOLDE")));
					mo.save();
					ODV = mo.getDocumentNo();
					found = true;
					X_XX_CleanUnPaid xx = new X_XX_CleanUnPaid(getCtx(), 0, get_Trx());
					if(Org_ID>0)
						xx.setAD_Org_ID(Org_ID);
					else
						xx.setAD_Org_ID(0);
					xx.setZ_PayGI(rs.getBigDecimal(5));
					xx.setAmount(rs.getBigDecimal(5));
					xx.setC_Order_ID(mo.getC_Order_ID());
					xx.setC_DocType_ID(DocType_ID);
					xx.save();
					nbOrder++;
					//addLog("ODV MAJ : "+ODV);
				}
				}
				catch (SQLException e)
				{
					log.log(Level.SEVERE, sql.toString(), e);
				}	
				finally{
					DB.closeResultSet(rs);
					DB.closeStatement(pstmt);
					pstmt = null;
				}
			return "Nombre d'ODV modifé : "+nbOrder;
		}
		return "Nombre d'ODV modifé : "+nbOrder;
	}

}
