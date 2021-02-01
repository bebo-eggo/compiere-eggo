package com.ecenter.compiere.model;

import java.sql.ResultSet;

import org.compiere.framework.POExtended;
import org.compiere.framework.POInterface;
import org.compiere.util.Ctx;
import org.compiere.util.Trx;

public class X_Z_P_SENDMAIL extends POExtended implements POInterface {

	/** AD_Table_ID=217 */
    public static final int Table_ID=1004606;
    
    private int AD_PrintFormat_ID;
    private int C_BPartner_ID;
    private String EMail_From;
    private String EMail_To;
    private String Email_C;
    private String Email_Cc;
    private int M_Product_Category_ID;
    private int R_MailText_ID;
    private int Y_Marque_ID;
    private int Z_AD_org_ID;
    private int Z_Gamme_ID;
    private int Z_S_Famille_ID;
    private int Z_S_S_Famille_ID;
    private int Z_S_S_S_Famille_ID;
    private int Z_P_SENDMAIL_ID;
    
    
	@Override
	public int get_Table_ID() {
		// TODO Auto-generated method stub
		return Table_ID;
	}
	
	public X_Z_P_SENDMAIL (Ctx ctx, int Z_P_SENDMAIL_ID, Trx trx)
    {
        super (ctx, Z_P_SENDMAIL_ID, trx);
    }
	
	public X_Z_P_SENDMAIL (Ctx ctx, ResultSet rs, Trx trx)
    {
        super (ctx, rs, trx);
        
    }
	
	 /** TableName=Z_P_SENDMAIL */
    public static final String Table_Name="Z_P_SENDMAIL";

	public int getAD_PrintFormat_ID() {
		return AD_PrintFormat_ID;
	}

	public void setAD_PrintFormat_ID(int aD_PrintFormat_ID) {
		AD_PrintFormat_ID = aD_PrintFormat_ID;
	}

	public int getC_BPartner_ID() {
		return C_BPartner_ID;
	}

	public void setC_BPartner_ID(int c_BPartner_ID) {
		C_BPartner_ID = c_BPartner_ID;
	}

	public String getEMail_From() {
		return EMail_From;
	}

	public void setEMail_From(String eMail_From) {
		EMail_From = eMail_From;
	}

	public String getEMail_To() {
		return EMail_To;
	}

	public void setEMail_To(String eMail_To) {
		EMail_To = eMail_To;
	}

	public String getEmail_C() {
		return Email_C;
	}

	public void setEmail_C(String email_C) {
		Email_C = email_C;
	}

	public String getEmail_Cc() {
		return Email_Cc;
	}

	public void setEmail_Cc(String email_Cc) {
		Email_Cc = email_Cc;
	}

	public int getM_Product_Category_ID() {
		return M_Product_Category_ID;
	}

	public void setM_Product_Category_ID(int m_Product_Category_ID) {
		M_Product_Category_ID = m_Product_Category_ID;
	}

	public int getR_MailText_ID() {
		return R_MailText_ID;
	}

	public void setR_MailText_ID(int r_MailText_ID) {
		R_MailText_ID = r_MailText_ID;
	}

	public int getY_Marque_ID() {
		return Y_Marque_ID;
	}

	public void setY_Marque_ID(int y_Marque_ID) {
		Y_Marque_ID = y_Marque_ID;
	}

	public int getZ_AD_org_ID() {
		return Z_AD_org_ID;
	}

	public void setZ_AD_org_ID(int z_AD_org_ID) {
		Z_AD_org_ID = z_AD_org_ID;
	}

	public int getZ_Gamme_ID() {
		return Z_Gamme_ID;
	}

	public void setZ_Gamme_ID(int z_Gamme_ID) {
		Z_Gamme_ID = z_Gamme_ID;
	}

	public int getZ_S_Famille_ID() {
		return Z_S_Famille_ID;
	}

	public void setZ_S_Famille_ID(int z_S_Famille_ID) {
		Z_S_Famille_ID = z_S_Famille_ID;
	}

	public int getZ_S_S_Famille_ID() {
		return Z_S_S_Famille_ID;
	}

	public void setZ_S_S_Famille_ID(int z_S_S_Famille_ID) {
		Z_S_S_Famille_ID = z_S_S_Famille_ID;
	}

	public int getZ_S_S_S_Famille_ID() {
		return Z_S_S_S_Famille_ID;
	}

	public void setZ_S_S_S_Famille_ID(int z_S_S_S_Famille_ID) {
		Z_S_S_S_Famille_ID = z_S_S_S_Famille_ID;
	}

	public int getZ_P_SENDMAIL_ID() {
		return Z_P_SENDMAIL_ID;
	}

	public void setZ_P_SENDMAIL_ID(int z_P_SENDMAIL_ID) {
		Z_P_SENDMAIL_ID = z_P_SENDMAIL_ID;
	}
    
    

}
