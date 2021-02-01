package com.audaxis.compiere.action.contract;

import org.compiere.model.MAllocationHdr;
import org.compiere.model.MDocBaseType;
import org.compiere.model.MInvoice;
import org.compiere.model.MMatchInv;
import org.compiere.model.MMatchPO;
import org.compiere.util.DB;

import com.audaxis.compiere.acct.util.DateAcctChangeValidator;
import com.audaxis.compiere.contract.action.BasicContractAction;
import com.audaxis.compiere.contract.action.ContractAction;

public class ActionInvoice extends BasicContractAction<MInvoice> implements
		ContractAction<MInvoice> {

	public ActionInvoice(MInvoice po) {
		super(po);
	}

	public String afterComplete() {
		getPO().setDocAction(MInvoice.DOCACTION_Reverse_Correct); //ZCOM258
		// getPO().save(); // No Need to save !
		return null;
	}

	public String beforePrepare() {
		return null;
	}

	public String beforeVoid() {
		//return beforeReverseCorrect();
		return null;
	}
	
	public String beforeReverseCorrect() {
		//ZCOM575 Look at Match PO and Inv for different acct date
		if (!getPO().isSOTrx() && 1==2)
		{
			MMatchInv[] mInv = MMatchInv.getInvoice(getCtx(), getPO().getC_Invoice_ID(), get_Trx());
			for (int i = 0; i < mInv.length; i++){
				if (mInv[i].isActive()){ 
					String error = DateAcctChangeValidator.isValide(getCtx(), mInv[i].getDateAcct(), MDocBaseType.DOCBASETYPE_MatchInvoice, mInv[i].getAD_Org_ID());
					if (error != null) {
						int cnt = DB.getSQLValue(get_Trx(), "SELECT COUNT(*) FROM Fact_Acct WHERE AD_Table_ID = 472 AND Record_ID = ?", mInv[i].getM_MatchInv_ID());
						if (cnt  > 0)
							return "Match Invoice '" + mInv[i].getDocumentNo() + "' : " + error;
					}
				}
			}
			MMatchPO[] mPO = MMatchPO.getInvoice(getCtx(), getPO().getC_Invoice_ID(), get_Trx());
			for (int i = 0; i < mPO.length; i++)
			{
				if (mPO[i].isActive()){ 
					String error = DateAcctChangeValidator.isValide(getCtx(), mPO[i].getDateAcct(), MDocBaseType.DOCBASETYPE_MatchPO, mPO[i].getAD_Org_ID());
					if (error != null) {
						// On va d'abord regarder si on a un Fact_Acct sinon pas grave
						int cnt = DB.getSQLValue(get_Trx(), "SELECT COUNT(*) FROM Fact_Acct WHERE AD_Table_ID = 473 AND Record_ID = ?", mPO[i].getM_MatchPO_ID());
						if (cnt  > 0)
							return "Match PO '" + mPO[i].getDocumentNo() + "' : " +error;
					}
				}
			}
		}
		//ZCOM575 END

		MAllocationHdr[] ahs = MAllocationHdr.getOfInvoice(getCtx(), getPO().getC_Invoice_ID(), get_Trx());
		if (ahs.length > 0) {
			return "Annulation interdite : il existe des affectations de paiement";
		}
		
		return null;
	}
}
