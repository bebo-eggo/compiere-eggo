package com.audaxis.compiere.process;

import java.io.File;
import java.util.ArrayList;
import java.util.logging.Level;

import org.compiere.print.ReportServer;
import org.compiere.process.ProcessInfo;
import org.compiere.process.ProcessInfoUtil;
import org.compiere.process.ZoomInterface;
import org.compiere.util.Ctx;
import org.compiere.util.Msg;
import org.compiere.util.Trx;

import com.audaxis.compiere.util.CompiereException;

/**
 * Cette classe am�liore ReportServerImpl pour �tre utilis� par des processus 
 * qui g�n�re un fichier en toute simplicit�
 * 
 * @author vha
 */
public abstract class ReportServerOutputImpl 
extends SvrProcessExtended 
implements ReportBatchModeInterface, ReportServer {

	private Ctx myCtx;
	private Trx trx;
	
	/**
	 * Faire par exemple return "MonFichier.xls"
	 * @return le nom du fichier Excel "simple" sans le U + AD_user_ID + AD_PInstance_ID
	 * 
	 */
	protected abstract String getOutputFileNameSimple();
	
	/**
	 * R�cup�rer les param�tres via getParameterAsXXX("ColumnName") etc...
	 */
	protected abstract void prepare();

	/**
	 * Construction du fichier<p>
	 * Cette m�thode doit �crire dans le fichier obtenu par l'appel � getOutputAbsoluteFileName()
	 */
	protected abstract void buildOutputFile();

	/**
	 * Retourne le nom du fichier en chemin <b>relatif</b><p>
	 * Au format U + AD_User_ID + _ + l'ID du Process Instance + _ + le nom du fichier simple
	 */
	public String getOutputFileName() {
    	return "U"+getCtx().getAD_User_ID() + "_" + getAD_PInstance_ID() + "_" + getOutputFileNameSimple();
    }

	/**
	 * Retourne le nom du fichier en chemin <b>absolu</b><p>
	 * Au format U + AD_User_ID + _ + le nom du fichier simple<p>
	 * Et dans le r�pertoire utilis� par l'ExportServlet pour recherche le fichier
	 */
	public String getOutputAbsoluteFileName() {
        File f = new File(System.getProperty("java.io.tmpdir"), getOutputFileName());
        return f.getAbsolutePath();
	}
	
	
	/**
	 * Cas 1 : m�thode appell�e via le ProcessReportEngine, c'est � dire quand on a li� un Process � un Print Format<p>
	 * C'est le cas pour
	 * <ul>
	 * <li>les JasperReport li� au documents (facures, ...)
	 * <li>les JXLS
	 * <li> ???
	 * </ul>
	 */
    public String doIt() throws Exception
    {
    	File outputFile = startReport(getCtx(), getProcessInfo(), false);
    	ArrayList<String> files = new ArrayList<String>();
    	files.add(outputFile.getAbsolutePath());
    	m_pi.setFiles(files);
        return outputFile.getAbsolutePath() + " " + Msg.getMsg(getCtx(), "Created");
    }
    
    /**
     * Cas 2 : M�thode appell�e si on lance un AD_Process depuis le menu ou un bouton
     */
	public File startReport(Ctx ctx, ProcessInfo pi, boolean IsDirectPrint) {
		this.myCtx = ctx;
		ProcessInfoUtil.setParameterFromDB(pi);
		m_pi = pi; // ??? Sinon il faut au moins les appels suivants
		//m_pi.setAD_PInstance_ID(pi.getAD_PInstance_ID());
		//m_pi.setRecord_ID(pi.getAD_PInstance_ID());
		
		prepare();
		
		trx = Trx.get(this.getClass()+"_"+getAD_PInstance_ID());

		String error = null;
		try {
			buildOutputFile();
			trx.commit();
		} catch (Throwable t) {
			trx.rollback();
			error = "Exception building Output : " + t.getMessage();
			log.log(Level.SEVERE, error, t);
			pi.setError(true);
			pi.setSummary(error);
			return null;
		} finally {
			trx.close();
		}
		//Redmine 49943
				if (this instanceof ZoomInterface)
					((ZoomInterface) this).addZoomInfo();
				//
		return new File(getOutputAbsoluteFileName());
	}
    
	/**
     * GWT : Le context est envoy� par ReportServiceImpl
     */
    public Ctx getCtx() {
    	Ctx c = super.getCtx();
    	if (c == null)
    		c = myCtx;
    	return c;
    }
    
	protected Trx get_Trx() {
		return trx;
	}
	
}
