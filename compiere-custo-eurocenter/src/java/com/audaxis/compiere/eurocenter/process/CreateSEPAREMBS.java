package com.audaxis.compiere.eurocenter.process;

import java.io.File;
import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.logging.Level;

import org.compiere.framework.PrintInfo;
import org.compiere.framework.Query;
import org.compiere.model.MBPartner;
import org.compiere.model.MInvoice;
import org.compiere.model.MJournal;
import org.compiere.model.MPayment;
import org.compiere.model.MProcess;
import org.compiere.model.X_C_PaySelectionCheck;
import org.compiere.model.X_XX_REMB_CLIENTS;
import org.compiere.model.X_XX_REMB_SELECTION;
import org.compiere.model.X_XX_REMB_SEL_LIGNE;
import org.compiere.model.X_ZSubPaymentRule;
import org.compiere.print.MPrintFormat;
import org.compiere.print.ReportEngine;
import org.compiere.print.ReportServer;
import org.compiere.process.DocumentEngine;
import org.compiere.process.ProcessInfo;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.util.CLogger;
import org.compiere.util.Ctx;
import org.compiere.util.DB;
import org.compiere.util.Env;

import com.audaxis.compiere.db.Util;
import com.audaxis.compiere.eurocenter.util.OSInfo;
import com.audaxis.compiere.export.ExportEngine;
import com.audaxis.compiere.export.ExportEngineFactory;
import com.audaxis.compiere.model.MBankAccountDoc;
import com.audaxis.compiere.model.MInvoiceProxy;
import com.audaxis.compiere.model.MPInstanceProxy;
import com.audaxis.compiere.process.ProcessStarter;
import com.audaxis.compiere.process.ReportBatchModeInterface;
import com.audaxis.compiere.process.ReportServerImpl;
import com.audaxis.compiere.process.SvrProcessExtended;
import com.audaxis.compiere.process.ZExportPayment;
import com.audaxis.compiere.util.CompiereException;

import ru.compiere.report.RusReportStarter;

public class CreateSEPAREMBS extends ReportServerImpl 
implements ReportBatchModeInterface, ReportServer{

	static private CLogger s_log = CLogger.getCLogger(CreateSEPAREMBS.class);
    private String p_File = null;
	private int selectRembs_ID = 0;
	private String p_PaymentRule = null;
	private int p_Zsub_ID = 0;
	private Timestamp p_date = null;
	
	private int AD_User_ID = 0;
    private int AD_PInstance_ID=0;

	
	protected void prepare() {
		// TODO Auto-generated method stub
		selectRembs_ID = m_pi.getRecord_ID();
		p_date =  new Timestamp(System.currentTimeMillis());
	}

	
	public File startReport(Ctx ctx, ProcessInfo pi, boolean IsDirectPrint) {
		myCtx = ctx;
		
		if (selectRembs_ID <= 0)
			selectRembs_ID = pi.getRecord_ID();
		
		X_XX_REMB_SELECTION sel = new X_XX_REMB_SELECTION(getCtx(), selectRembs_ID, get_Trx());
		if(sel.getXX_REMB_SEL_LIGNE().size()<=0)
		{
			throw new CompiereException("Aucun paiement à exporter");
		}
		if(OSInfo.OS.WINDOWS.equals(OSInfo.getOs())){
	    	if (p_File == null)
	    		
	    	{	p_File = "/tmp/U0_RemboursementClients.txt";
	    		String xxx = System.getProperty("java.io.tmpdir").substring(0, System.getProperty("java.io.tmpdir").length()-1);
	    		p_File = xxx+p_File.replace("/", "\\").replace(".txt", ".xml");
	    		p_File = p_File.replace("\\tmp","");
	    		//p_File = "/tmp/U0_virement.txt";
	    	}
	    	else
	    	{
	    		String xxx = System.getProperty("java.io.tmpdir").substring(0, System.getProperty("java.io.tmpdir").length()-1);
	    		p_File = xxx+p_File.replace("/", "\\").replace(".txt", ".xml");
	    		p_File = p_File.replace("\\tmp","");
	    	}
	    	}
	    	else{
	    		if (p_File == null)
	    			p_File = "RemboursementClients.txt";

	    		String tmp = System.getProperty("java.io.tmpdir"); 
	    		if (tmp == null)
	    			tmp = "";
	    		else if (! tmp.endsWith(File.separator))
	    			tmp = tmp + File.separator;
	    		AD_User_ID=pi.getAD_User_ID();
	    		AD_PInstance_ID=pi.getAD_PInstance_ID();
	    		p_File = tmp + "U" + AD_User_ID+"_" + AD_PInstance_ID + "_" + p_File;
	    		p_File = p_File.replace(".txt", ".xml");
	    	}
		// call export engine
        ExportEngine exp = ExportEngineFactory.getExportEngine();
        X_ZSubPaymentRule payR = new X_ZSubPaymentRule(getCtx(),
                sel.getZSubPaymentRule_ID(), get_Trx());

        File ret = null;
        if (payR.get_Value("AD_Process_ID") != null)
        {
            int processId = ((Integer) payR.get_Value("AD_Process_ID")).intValue();
            ProcessInfo pi2 = new ProcessInfo("Payment Export", processId);
            pi2.setRecord_ID(sel.getXX_REMB_SELECTION_ID());
            pi2.setAD_PInstance_ID(MPInstanceProxy.getAD_PInstance_ID(getCtx(),
            		pi2.getAD_Process_ID(), pi2.getRecord_ID()));
            //#18759
            boolean success = true;
            //#18759
            RusReportStarter jrl = new RusReportStarter();
            //#18759
            MProcess process = new MProcess(getCtx(), processId, get_Trx());
            if (!process.isReport()){
            	ProcessStarter pstart = new ProcessStarter(getCtx(), processId, get_Trx());
            	pstart.setRecord_ID(sel.getXX_REMB_SELECTION_ID());
            	pstart.addParameter("FileName", p_File, null);
            	try {
					pstart.start();
					ret = new File(p_File);
				} catch (Exception e) {
					throw new CompiereException("Le processus d'export est en echec");
				}
            }
            else
            //#18759
            	ret = jrl.startReport(getCtx(), pi2, false); // ZCOM999

            if (ret == null)
            {
                throw new CompiereException("Le processus d'export est en echec");
            }
        }
        else
        {
            throw new CompiereException("EXPORT FORMAT OU PRINT FORMAT NON DEFINI");
        }
        sel.setProcessed(true);
        sel.save();
        return ret;

	}

	@Override
	public String getOutputFileName() {
		// TODO Auto-generated method stub
		return p_File;
	}

}
