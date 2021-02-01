package com.audaxis.compiere.eurocenter.process;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.logging.Level;

import org.compiere.common.CompiereStateException;
import org.compiere.common.constants.DisplayTypeConstants;
import org.compiere.model.AccompteUtil;
import org.compiere.model.MBPartner;
import org.compiere.model.MClient;
import org.compiere.model.MDocType;
import org.compiere.model.MInOut;
import org.compiere.model.MInOutLine;
import org.compiere.model.MInvoice;
import org.compiere.model.MInvoiceLine;
import org.compiere.model.MLocation;
import org.compiere.model.MOrder;
import org.compiere.model.MOrderLine;
import org.compiere.model.MOrderPaymSchedule;
import org.compiere.model.MOrderTax;
import org.compiere.model.X_M_InOut;
import org.compiere.process.DocumentEngine;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.DB;
import org.compiere.util.DBException;
import org.compiere.util.DisplayType;
import org.compiere.util.Env;
import org.compiere.util.Language;
import org.compiere.vos.DocActionConstants;

import com.audaxis.compiere.db.Util;
import com.audaxis.compiere.eurocenter.process.model.ACPDoc;
import com.audaxis.compiere.model.MDocTypeInfo;
import com.audaxis.compiere.util.CompiereException;
import com.kenai.jffi.Array;

public class InvoiceOrderShipment extends SvrProcess{

	private int ordID = 0;
	/**	The current Invoice	*/
	private MInvoice 	m_invoice = null;
	/**	The current Shipment	*/
	private MInOut	 	m_ship = null;
	/**	The current Order	*/
	private MOrder	 	m_order = null;
	/**	Line Number				*/
	private int			m_line = 0;
	/**	Business Partner		*/
	private MBPartner	m_bp = null;
	private Timestamp p_DateInvoiced = null;
	
	private ArrayList<Integer> molsID;
	
	private ArrayList<ACPDoc> AccompteDocs = null;
	
	BigDecimal SommeTotACP = Env.ZERO;
	
	AccompteUtil au = null;

	@Override
	protected void prepare() {
		ordID = getRecord_ID();
		if (ordID == 0){
			ProcessInfoParameter[] para = getParameter();
			for (ProcessInfoParameter element : para) {
				String name = element.getParameterName();
				if (element.getParameter() == null && element.getParameter_To() == null)
					;
				else if (name.equals("C_Order_ID"))
					ordID = (Integer)element.getParameter();
				else
					log.log(Level.SEVERE, "Unknown Parameter: " + name);
			}
		}
		au = new AccompteUtil(getCtx(), getAD_Client_ID(), get_Trx());
		if (ordID == 0) throw new CompiereException("Unable to make Invoice, no parameter !");
	}

	@Override
	protected String doIt() throws Exception {
		int nbrreversed = 0;
		String docno = "";
		SommeTotACP = Env.ZERO;
		//Fill AccompteDocs
		AccompteDocs = getAccompteDocs(ordID);
		
		
		MOrder ord = new MOrder(getCtx(),ordID, get_Trx());
		int accID = au.getAccompte_Product_ID();
		if (accID <1) throw new CompiereException("Pas d'article ACOMPTE défini pour la société ");
			createShipInvoice(ord);
			
			
			if (m_invoice != null ) {  // Reverse Acompte Line already pay 
				String lbl = "Rev. " + m_invoice.getDocumentNo();
				MInvoice invRev = createReverseInvoice( ord, m_invoice ,  accID, lbl);
				if (invRev != null){
					boolean successInv = DocumentEngine.processIt(invRev, DocActionConstants.ACTION_Complete);
					invRev.save(get_Trx());
				}
				
				
				// Reverse Financement
				 nbrreversed = reverseFinInvoice(ord);
				
			}

			if (m_invoice != null ) {
			boolean successInv = DocumentEngine.processIt(m_invoice, DocActionConstants.ACTION_Complete);
			m_invoice.save(get_Trx());
			docno = m_invoice.getDocumentNo();
			
			//MERGE
			MDocTypeInfo dti = MDocTypeInfo.get(getCtx(), ord.getC_DocTypeTarget_ID(), get_Trx());
			if(dti != null && dti.isCuisine())
				if (dti.isStore()//MERGE
						|| dti.isExpo() //MERGE
					|| dti.isEggoPro() //MERGE
					|| dti.isDirect()//MERGE
					|| dti.isPlacard()) //MERGE
				{
					// Assignation ou création à une échance correspondante
					MOrderPaymSchedule ops = null;

					
					//Prendre l'échéance de livraison si correspondant au prix!
					int opsid = DB.getSQLValue(get_Trx(), "select Z_OrderPaymSchedule_ID from Z_OrderPaymSchedule where IsActive='Y' and c_invoice_id is null and "
							+ "exists (Select 1 from Z_TypeEcheance where IsActive='Y' and Z_OrderPaymSchedule.Z_TypeEcheance_ID = Z_TypeEcheance.Z_TypeEcheance_ID) "
							+ "and C_Order_ID = (Select C_Order_ID from C_Invoice where C_Invoice.C_Invoice_ID = ?) and TotalAmt="+m_invoice.getGrandTotal()+" and rownum = 1", m_invoice.getC_Invoice_ID());
					
					if (opsid <= 0)
					 opsid = DB.getSQLValue(get_Trx(), "select Z_OrderPaymSchedule_ID from Z_OrderPaymSchedule where IsActive='Y' and c_invoice_id is null and "
							+ "exists (Select 1 from Z_TypeEcheance where IsActive='Y' and IsAjust = 'Y' and Z_OrderPaymSchedule.Z_TypeEcheance_ID = Z_TypeEcheance.Z_TypeEcheance_ID) "
							+ "and C_Order_ID = (Select C_Order_ID from C_Invoice where C_Invoice.C_Invoice_ID = ?) and rownum = 1", m_invoice.getC_Invoice_ID());
					if(opsid>0){
						ops = new MOrderPaymSchedule(getCtx(), opsid, get_Trx());
						ops.setC_Invoice_ID(m_invoice.getC_Invoice_ID());
						ops.save(get_Trx());
					}else{
						int	typeEchAdjID = DB.getSQLValue(get_Trx(), "select min(z_typeecheance_id) from z_typeecheance where IsAjust = 'Y' and AD_Client_ID = ?", m_invoice.getAD_Client_ID());
						ops = new MOrderPaymSchedule(getCtx(), 0, get_Trx());
						ops.setClientOrg(m_invoice.getAD_Client_ID(), m_invoice.getAD_Org_ID());
						MOrder mo = new MOrder(getCtx(), m_invoice.getC_Order_ID(), get_Trx());
						ops.setC_Order_ID(m_invoice.getC_Order_ID());
						ops.setZ_TypeEcheance_ID(typeEchAdjID);
						ops.setSeqNo(99);
						ops.set_ValueNoCheck("DueDate", mo.getDatePromised());
						ops.setTotalAmt(Env.ZERO);
						ops.setC_Invoice_ID(m_invoice.getC_Invoice_ID());
						ops.save(get_Trx());
					}
				}
			}

			if (!docno.isEmpty())	
				return "Facture générée : " + docno + " Financement annulé : " + nbrreversed;
			else
				return "Pas de livraison à facturer.";
	}



	
	
	private String createShipInvoice(MOrder order) {
	
		p_DateInvoiced =  new Timestamp(System.currentTimeMillis());
		m_invoice = null;
		m_ship = null;
		
	
		MInOut shipment = null;
		//ZCOM209 MInOutLine[] shipmentLines = order.getShipmentLines();
		MInOutLine[] shipmentLines = getShipmentLinesCompleted(order); /*ZCOM209*/
		
		// sraval: 10017443- Sort Shipment lines by Line Number 
		Arrays.sort(shipmentLines, new Comparator<MInOutLine>(){
			public int compare(MInOutLine o1, MInOutLine o2) {
				return o1.getLine()-o2.getLine();
		}});
		molsID = new ArrayList<Integer>();
		// end 10017443
		//Facturer les lignes venant d'etre expédiées !
		for (MInOutLine shipLine : shipmentLines) {
			if (shipLine.isInvoiced())
				continue;
			if (shipment == null 
				|| shipment.getM_InOut_ID() != shipLine.getM_InOut_ID())
				shipment = new MInOut(getCtx(), shipLine.getM_InOut_ID(), get_TrxName());
			
			if (!shipment.isComplete()		//	ignore incomplete or reversals 
				|| shipment.getDocStatus().equals(X_M_InOut.DOCSTATUS_Reversed))
				continue;
			//
			createLine (order, shipment, shipLine);
			molsID.add(shipLine.getC_OrderLine_ID());
			if (m_invoice != null ){
				m_invoice.prepareIt();
				m_invoice.save();
			}
		}	//	shipment lines
		//Facturer les lignes dejà expédiées mais pas encore facuturées.
		MOrderLine[] mols = order.getLines(" and ABS(QtyDelivered) > 0 and ABS(QtyDelivered)>ABS(QtyInvoiced) ", " order by Line ASC ");
		for (int i = 0; i < mols.length; i++) {
			if(molsID.size()==0)
			{
				createLine(order, mols[i]);
				continue;
			}
			if(molsID.contains(mols[i].getC_OrderLine_ID()))
				continue;
			createLine(order, mols[i]);
		}
		if (m_invoice != null ){
			m_invoice.prepareIt();
			m_invoice.save();
		}
		return "";
	}
	/**
	 * 	Create Invoice Line from Shipment
	 *	@param order order
	 *	@param ship shipment header
	 *	@param sLine shipment line
	 */
	private void createLine (MOrder order, MOrderLine mol)
	{
		if (m_invoice == null)
		{
			m_invoice = new MInvoice (order, 0, p_DateInvoiced);
			if (!m_invoice.save())
				throw new CompiereStateException("Could not create Invoice (s)");
		}
		//	Create Shipment Comment Line
		if (m_order == null 
			|| m_order.getC_Order_ID() != order.getC_Order_ID())
		{
			MDocType dt = MDocType.get(getCtx(), order.getC_DocType_ID());
			if (m_bp == null || m_bp.getC_BPartner_ID() != order.getC_BPartner_ID())
				m_bp = new MBPartner (getCtx(), order.getC_BPartner_ID(), get_TrxName());
			
			//	Reference: Delivery: 12345 - 12.12.12
			MClient client = MClient.get(getCtx(), order.getAD_Client_ID ());
			String AD_Language = client.getAD_Language();
			if (client.isMultiLingualDocument() && m_bp.getAD_Language() != null)
				AD_Language = m_bp.getAD_Language();
			if (AD_Language == null)
				AD_Language = Language.getBaseAD_Language();
			java.text.SimpleDateFormat format = DisplayType.getDateFormat 
				(DisplayTypeConstants.Date, Language.getLanguage(AD_Language));
			String reference = dt.getPrintName(m_bp.getAD_Language())
				+ ": " + order.getDocumentNo() 
				+ " - " + format.format(order.getDateOrdered());
			m_order = order;
			//
			MInvoiceLine line = new MInvoiceLine (m_invoice);
			line.setIsDescription(true);
			line.setDescription(reference);
			line.setLine(m_line + mol.getLine() - 2);
			if (!line.save())
				throw new CompiereStateException("Could not create Invoice Comment Line (sh)");
			
			//line.setC_OrderLine_ID(sLine.getC_OrderLine_ID());
			line.setOrderLine(new MOrderLine(getCtx(),mol.getC_OrderLine_ID(),get_Trx() ));
			//ZCOM447
//			if (sLine.getC_OrderLine_ID() != 0)
//			{
//				MOrderLine ol = new MOrderLine(getCtx(),sLine.getC_OrderLine_ID(),get_TrxName());
				line.setUser2_ID(mol.getUser2_ID());
				line.set_ValueNoCheck("ZIsComplement", mol.get_Value("ZIsComplement"));
//			}
//			else
//				line.setUser2_ID(ship.getUser2_ID());
			//ZCOM447	

			//	Optional Ship Address if not Bill Address
//			if (order.getBill_Location_ID() != order.getC_BPartner_Location_ID())
//			{
//				MLocation addr = MLocation.getBPLocation(getCtx(), ship.getC_BPartner_Location_ID(), null);
//				line = new MInvoiceLine (m_invoice);
//				line.setIsDescription(true);
//				line.setDescription(addr.toString());
//				line.setLine(m_line + sLine.getLine() - 1);
//				if (!line.save())
//					throw new CompiereStateException("Could not create Invoice Comment Line 2 (sh)");
//			}
		}
		//	
		MInvoiceLine line = new MInvoiceLine (m_invoice);
		line.setOrderLine(mol);
		line.setQtyEntered(mol.getQtyDelivered().subtract((mol.getQtyInvoiced())));
		line.setQtyInvoiced(mol.getQtyDelivered().subtract((mol.getQtyInvoiced())));
		line.setLine(m_line + mol.getLine());
		line.setM_AttributeSetInstance_ID(mol.getM_AttributeSetInstance_ID());
		line.updateHeaderTax();

		if (!line.save())
			throw new CompiereStateException("Could not create Invoice Line (s)");
		//	Link
		//sLine.setIsInvoiced(true);
		//if (!sLine.save())
		//	throw new CompiereStateException("Could not update Shipment Line");
		
		log.fine(line.toString());
	}	//	createLine
	
	/**
	 * 	Create Invoice Line from Shipment
	 *	@param order order
	 *	@param ship shipment header
	 *	@param sLine shipment line
	 */
	private void createLine (MOrder order, MInOut ship, MInOutLine sLine)
	{
		if (m_invoice == null)
		{
			m_invoice = new MInvoice (order, 0, p_DateInvoiced);
			if (!m_invoice.save())
				throw new CompiereStateException("Could not create Invoice (s)");
		}
		//	Create Shipment Comment Line
		if (m_ship == null 
			|| m_ship.getM_InOut_ID() != ship.getM_InOut_ID())
		{
			MDocType dt = MDocType.get(getCtx(), ship.getC_DocType_ID());
			if (m_bp == null || m_bp.getC_BPartner_ID() != ship.getC_BPartner_ID())
				m_bp = new MBPartner (getCtx(), ship.getC_BPartner_ID(), get_TrxName());
			
			//	Reference: Delivery: 12345 - 12.12.12
			MClient client = MClient.get(getCtx(), order.getAD_Client_ID ());
			String AD_Language = client.getAD_Language();
			if (client.isMultiLingualDocument() && m_bp.getAD_Language() != null)
				AD_Language = m_bp.getAD_Language();
			if (AD_Language == null)
				AD_Language = Language.getBaseAD_Language();
			java.text.SimpleDateFormat format = DisplayType.getDateFormat 
				(DisplayTypeConstants.Date, Language.getLanguage(AD_Language));
			String reference = dt.getPrintName(m_bp.getAD_Language())
				+ ": " + ship.getDocumentNo() 
				+ " - " + format.format(ship.getMovementDate());
			m_ship = ship;
			//
			MInvoiceLine line = new MInvoiceLine (m_invoice);
			line.setIsDescription(true);
			line.setDescription(reference);
			line.setLine(m_line + sLine.getLine() - 2);
			if (!line.save())
				throw new CompiereStateException("Could not create Invoice Comment Line (sh)");
			
			//line.setC_OrderLine_ID(sLine.getC_OrderLine_ID());
			line.setOrderLine(new MOrderLine(getCtx(),sLine.getC_OrderLine_ID(),get_Trx() ));
			//ZCOM447
			if (sLine.getC_OrderLine_ID() != 0)
			{
				MOrderLine ol = new MOrderLine(getCtx(),sLine.getC_OrderLine_ID(),get_TrxName());
				line.setUser2_ID(ol.getUser2_ID());
				line.set_ValueNoCheck("ZIsComplement", ol.get_Value("ZIsComplement"));
			}
			else
				line.setUser2_ID(ship.getUser2_ID());
			//ZCOM447	

			//	Optional Ship Address if not Bill Address
			if (order.getBill_Location_ID() != ship.getC_BPartner_Location_ID())
			{
				MLocation addr = MLocation.getBPLocation(getCtx(), ship.getC_BPartner_Location_ID(), null);
				line = new MInvoiceLine (m_invoice);
				line.setIsDescription(true);
				line.setDescription(addr.toString());
				line.setLine(m_line + sLine.getLine() - 1);
				if (!line.save())
					throw new CompiereStateException("Could not create Invoice Comment Line 2 (sh)");
			}
		}
		//	
		MInvoiceLine line = new MInvoiceLine (m_invoice);
		line.setShipLine(sLine);
		line.setQtyEntered(sLine.getQtyEntered());
		line.setQtyInvoiced(sLine.getMovementQty());
		line.setLine(m_line + sLine.getLine());
		line.setM_AttributeSetInstance_ID(sLine.getM_AttributeSetInstance_ID());
		line.updateHeaderTax();

		if (!line.save())
			throw new CompiereStateException("Could not create Invoice Line (s)");
		//	Link
		sLine.setIsInvoiced(true);
		if (!sLine.save())
			throw new CompiereStateException("Could not update Shipment Line");
		
		log.fine(line.toString());
	}	//	createLine

	
	
	private MInvoice createReverseInvoice(MOrder order,MInvoice inv , int accID,String lbl) {

		p_DateInvoiced =  new Timestamp(System.currentTimeMillis());
		BigDecimal qty;
		BigDecimal amt;
		MInvoice revInv = null;
		MDocTypeInfo dti = MDocTypeInfo.get(getCtx(), order.getC_DocTypeTarget_ID(), get_Trx());
		if(SommeTotACP == null)
			SommeTotACP = BigDecimal.ZERO;

		if (SommeTotACP.compareTo(BigDecimal.ZERO) != 0) {
				int accPLID = au.getAccompte_PriceList_ID();
				revInv = new MInvoice (order, 0, p_DateInvoiced);//TAM
				revInv.setDescription(lbl);
				revInv.setC_DocTypeTarget_ID(dti.getC_DocType_RAccompte_ID()); //TAM //MERGE
				revInv.setM_PriceList_ID(accPLID); //TAM
				if (!revInv.save())
					throw new CompiereStateException("Could not create Invoice (s)");
				revInv.setM_PriceList_ID(accPLID); //TAM
				createLineFctTax(order,accID, revInv, BigDecimal.ONE.negate(), null);
		}	

		return revInv;

	}
	
	protected MInOutLine[] getShipmentLinesCompleted(MOrder order)
	{
		ArrayList<MInOutLine> list = new ArrayList<MInOutLine>();
		//ZCOM207 String sql = "SELECT * FROM M_InOut WHERE C_Order_ID=? ORDER BY Created DESC";
		// ZCOM207
		String sql =  "SELECT * FROM M_InOutLine l WHERE l.M_Inout_ID in " 
			+ " (select iol.m_inout_id from m_inoutline iol inner join m_inout io on io.m_inout_id = iol.m_inout_id where iol.c_orderline_id in " 
			+ "  (select ol.c_orderline_id from c_orderline ol where ol.C_Order_ID=? AND ol.ZIsComplement = 'N' ) "
			+ " and (io.docstatus = 'CO' or io.docstatus = 'CL' or io.docstatus = 'VO' or io.docstatus = 'RE') )"
			+ " and ( l.m_inoutline_id not in (select m_inoutline_id from c_invoiceline where m_inoutline_id = l.m_inoutline_id) ) "  // not already invoiced 
			+ " and l.AD_Client_ID=? and isInvoiced = 'N' "
			+ " ORDER BY l.Created ASC ";	
		//ZCOM207

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement(sql, get_TrxName());
			pstmt.setInt(1, order.getC_Order_ID());
			pstmt.setInt(2, getAD_Client_ID());
			rs = pstmt.executeQuery();
			while (rs.next()){
				MInOutLine mil = new MInOutLine(getCtx(), rs, get_TrxName());
				MOrderLine mol = new MOrderLine(getCtx(), mil.getC_OrderLine_ID(), get_TrxName());
				if(mol!=null && mol.getQtyInvoiced().equals(mol.getQtyOrdered()) && mol.getQtyInvoiced().abs().doubleValue()>=mol.getQtyOrdered().abs().doubleValue() )
					continue;
				list.add(new MInOutLine(getCtx(), rs, get_TrxName()));
			}
		}
		catch (Exception e)
		{
			log.severe("getShipments"+ e);
			throw new DBException(e);
		}
		finally
		{
			Util.closeCursor(pstmt, rs);
			pstmt = null;
		}
		//
		MInOutLine[] retValue = new MInOutLine[list.size()];
		list.toArray(retValue);
		return retValue;
	}
	
	
	private void createLineFctTax(MOrder ord,int accID, MInvoice inv, BigDecimal sign, String lbl) {

		if (sign == null) sign = BigDecimal.ONE;

		int i = 0;
		int nbrLine = AccompteDocs.size();
		for(ACPDoc doc : AccompteDocs){
			i++;
			MInvoiceLine invLine = new MInvoiceLine(inv);
			invLine.setM_Product_ID(accID);
			invLine.setQty(BigDecimal.ONE.multiply(sign));
			invLine.setPrice(doc.getTotalAmt());
			invLine.setPriceList(doc.getTotalAmt());
			invLine.setC_Tax_ID(doc.getC_Tax_ID());
			if (lbl != null)
				invLine.setDescription(lbl);
			invLine.save(get_Trx());
			invLine.updateHeaderTax();
			
		}
	}
	
	
	private int reverseFinInvoice(MOrder ord) throws Exception {
		
		MDocTypeInfo dti = MDocTypeInfo.get(getCtx(), ord.getC_DocTypeTarget_ID(), get_Trx());
		StringBuffer sqlins = new StringBuffer("SELECT os.c_invoice_id  FROM Z_OrderPaymSchedule os  ")
		.append(" inner join z_typeecheance e on (e.z_typeecheance_id = os.z_typeecheance_id) ")
		.append(" inner join c_invoice i on (i.c_invoice_id = os.c_invoice_id) ")
		.append(" inner join zsubpaymentrule s on (s.zsubpaymentrule_id = e.zsubpaymentrule_id) ")
		.append("WHERE  os.c_order_id = ? and os.IsActive='Y' and s.isFinancement = 'Y' and (i.Ref_Invoice_id is null or i.Ref_Invoice_id < 1 ) ")
		.append(" UNION " )
		.append (" SELECT os.c_invoice_id  FROM Z_OrderVDPayment os   " ) 
		.append(" inner join c_invoice i on (i.c_invoice_id = os.c_invoice_id) ")
		.append(" inner join zsubpaymentrule s on (s.zsubpaymentrule_id = os.zsubpaymentrule_id) ")
		.append("WHERE  os.c_order_id = ? and os.IsActive='Y' and s.isFinancement = 'Y' and (i.Ref_Invoice_id is null or i.Ref_Invoice_id < 1 ) ");
		int nbrRev=0;
		PreparedStatement pstmtins = null;
		ResultSet rsins = null;
		try
		{
			pstmtins = DB.prepareStatement(sqlins.toString(), get_Trx());
			pstmtins.setInt(1, ord.getC_Order_ID());
			pstmtins.setInt(2, ord.getC_Order_ID());
			rsins = pstmtins.executeQuery();
			while (rsins.next())
			{
				MInvoice inv = new MInvoice(getCtx(), rsins.getInt(1), get_Trx());
				Timestamp curDate = new Timestamp(Env.getCtx().getContextAsTime("#Date"));
				MInvoice reversal = MInvoice.copyFrom(inv, curDate,
						dti.getC_DocType_RAccompte_ID(), false, get_Trx(), true, false);
				
				if (reversal == null)
				{
					continue;
				}
				//	Reverse Line Qty
				MInvoiceLine[] rLines = reversal.getLines();
				for (MInvoiceLine rLine : rLines) {
					rLine.setQtyEntered(rLine.getQtyEntered().negate());
					rLine.setQtyInvoiced(rLine.getQtyInvoiced().negate());
					rLine.setLineNetAmt(rLine.getLineNetAmt().negate());
					if (rLine.getTaxAmt() != null && rLine.getTaxAmt().compareTo(Env.ZERO) != 0)
						rLine.setTaxAmt(rLine.getTaxAmt().negate());
					if (rLine.getLineTotalAmt() != null && rLine.getLineTotalAmt().compareTo(Env.ZERO) != 0)
						rLine.setLineTotalAmt(rLine.getLineTotalAmt().negate());
					if (!rLine.save(get_Trx()))
					{
						continue;
					}
				}
				reversal.setC_Order_ID(ord.getC_Order_ID());
				reversal.addDescription("(Annul.Fin.:" + inv.getDocumentNo() + ")");
				DocumentEngine.processIt(reversal, DocActionConstants.ACTION_Complete);
				reversal.save(get_Trx());
				inv.addDescription("(Annul.Fin.par :" + reversal.getDocumentNo() + ")");
				inv.setRef_Invoice_ID(reversal.getID());
				inv.save(get_Trx());
			}
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, sqlins.toString(), e);
			throw e;
		}
		finally 
		{
			Util.closeCursor(pstmtins, rsins);
			pstmtins = null;
		}
		return nbrRev;
	}
	
	private ArrayList<ACPDoc> getAccompteDocs (int C_Order_ID)  throws Exception {
		if(SommeTotACP==null)
			SommeTotACP = Env.ZERO;
		ArrayList<ACPDoc> AccompteDocs = new ArrayList<ACPDoc>();
		String sql = "Select CO.C_ORDER_ID, co.GRANDTOTAL,cil.C_Tax_ID as TaxID,cil.M_Product_ID, sum(cil.LINENETAMT) as SLINENETAMT "
				+ "from C_Order co "
				+ "inner JOIN C_Invoice ci on (ci.C_Order_ID = co.C_Order_ID and ci.DocStatus not in ('DR','IP','IN')) "
				+ "inner join C_INVOICELINE cil on cil.C_INVOICE_ID = ci.C_INVOICE_ID "
				+ "inner join C_DOCTYPEINFO cd on (cd.C_DOCTYPE_ID = co.C_DOCTYPE_ID and (cd.C_DOCTYPE_ACCOMPTE_ID = ci.C_DocType_ID OR C_DOCTYPE_RACCOMPTE_ID = ci.C_DocType_ID )) "
				+ "where co.C_ORder_ID = ? and cil.M_Product_ID = ? "
				+ "group by  CO.C_ORDER_ID, co.GRANDTOTAL,cil.M_Product_ID, cil.C_Tax_ID  ";
		PreparedStatement pstmtins = null;
		ResultSet rs = null;
		try
		{
			pstmtins = DB.prepareStatement(sql.toString(), get_Trx());
			pstmtins.setInt(1,C_Order_ID);
			pstmtins.setInt(2,au.getAccompte_Product_ID());
			rs = pstmtins.executeQuery();
			while (rs.next())
			{
				ACPDoc acpDoc = new ACPDoc(rs.getInt(1), rs.getBigDecimal(5), rs.getInt(3));
				AccompteDocs.add(acpDoc);
				SommeTotACP = SommeTotACP.add(rs.getBigDecimal(5));
			}
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, sql.toString(), e);
			throw e;
		}
		finally 
		{
			Util.closeCursor(pstmtins, rs);
			pstmtins = null;
		}
		if(SommeTotACP!=null && SommeTotACP.equals(Env.ZERO))
			AccompteDocs.clear();
		
		return AccompteDocs;
	}

}
