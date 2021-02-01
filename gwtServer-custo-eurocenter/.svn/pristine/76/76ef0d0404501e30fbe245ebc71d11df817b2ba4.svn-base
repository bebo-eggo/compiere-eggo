/**
 * 
 */
package org.compiere.gwt.server.window;

import static org.compiere.common.constants.CreateFromConstants.BANK_ACCOUNT;
import static org.compiere.common.constants.CreateFromConstants.BANK_STATEMENT;
import static org.compiere.common.constants.CreateFromConstants.SEARCH;

import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Vector;
import java.util.logging.Level;

import javax.swing.table.DefaultTableModel;

import org.compiere.common.QueryVO;
import org.compiere.common.TableModel;
import org.compiere.common.constants.DisplayTypeConstants;
import org.compiere.common.constants.GlobalMessageConstants;
import org.compiere.grid.VCreateFrom;
import org.compiere.grid.VCreateFromStatement;
import org.compiere.gwt.server.component.SearchComponentImpl;
import org.compiere.gwt.server.component.VectorComponentImpl;
import org.compiere.intf.ComponentImplIntf;
import org.compiere.intf.WindowImplIntf;
import org.compiere.model.MBPartner;
import org.compiere.model.MBank;
import org.compiere.model.MBankAccount;
import org.compiere.model.MBankStatementLine;
import org.compiere.model.MClient;
import org.compiere.model.MPayment;
import org.compiere.util.CLogger;
import org.compiere.util.Ctx;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.KeyNamePair;
import org.compiere.util.Msg;
import org.compiere.util.NamePair;
import org.compiere.util.Trx;
import org.compiere.vos.ChangeVO;
import org.compiere.vos.ComponentVO;
import org.compiere.vos.FieldVO;
import org.compiere.vos.ListBoxVO;
import org.compiere.vos.UWindowID;
import org.compiere.vos.WindowCtx;

import com.audaxis.compiere.model.MBankStatement;
import com.audaxis.compiere.model.MZSubPaymentRule;
import com.audaxis.compiere.util.CompiereException;

/**
 * @author gwu
 *
 */
public class CreateFromStatementWindowImpl extends WindowImpl 
{

	//ZCOM #32430
	private static final String TOTAL = "TOTAL";
	private static final String COUNT = "COUNT";
	private static final String EcartAmt = "EcartAmt";//44654
	//ZCOM #32430

	final SearchComponentImpl c_search;
	//	final SearchComponentImpl c_refresh = null; //ZCOM #32430
	//	final SearchComponentImpl c_filltre; //REDMINE 38999
	final SearchComponentImpl c_total; //REDMINE 38999
	private FieldVO fVO_subPayRule; //REDMINE 38999
	private FieldVO fTotal;//REDMINE 38999
	private ArrayList<NamePair> p = new ArrayList<NamePair>();

	final VectorComponentImpl c_table;
	protected ArrayList<ComponentImplIntf> components = new ArrayList<ComponentImplIntf>();
	protected final Ctx serverCtx;
	protected final WindowCtx windowCtx;
	protected final UWindowID m_uid;
	protected final int windowNO;
	private SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");

	private static CLogger s_log = CLogger.getCLogger( CreateFromStatementWindowImpl.class );
	
	private static HashMap<String, HashMap<String, Object>> cache = new HashMap<String, HashMap<String,Object>>();//44642
	
	/**
	 * @param windowNO 
	 * @param serverCtx 
	 * @param windowCtx
	 * @param uid
	 */
	public CreateFromStatementWindowImpl( int windowNO, final Ctx serverCtx, WindowCtx windowCtx, UWindowID uid )
	{
		this.serverCtx = serverCtx;
		this.windowCtx = windowCtx;
		this.m_uid = uid;
		this.windowNO = windowNO;

		/*ZCOM999 On reprend le compte bancaire du contexte
		FieldVO f_BankAccount = new FieldVO( BANK_ACCOUNT, Msg.translate( serverCtx, BANK_ACCOUNT ), DisplayTypeConstants.TableDir, true );
		int AD_Column_ID = 4917; // C_BankStatement.C_BankAccount_ID
		serverCtx.setContext( windowNO, windowCtx.getStringMap() );  // Mainly to copy AD_Org_ID to the lookup window 
		MLookup lookup = MLookupFactory.get( serverCtx, windowNO, AD_Column_ID, DisplayTypeConstants.TableDir );
		String defaultKey = windowCtx.get( BANK_ACCOUNT ) == null ? null : windowCtx.get( BANK_ACCOUNT );
		f_BankAccount.listBoxVO = new ListBoxVO( lookup.getData( true, true, true, false ), defaultKey );
		f_BankAccount.IsReadOnly = true;
		 */

		//ZCOM #32430
		fTotal 	= new FieldVO( TOTAL, Msg.translate( serverCtx,  TOTAL ), DisplayTypeConstants.Amount, false );
		fTotal.DefaultValue = "0.00";
		fTotal.IsReadOnly = true; 

		//REDMINE 38999
		//		FieldVO fCount 	= new FieldVO( COUNT, Msg.translate( serverCtx, COUNT ), DisplayTypeConstants.Integer, false );
		//		fCount.DefaultValue = "0";
		//		fCount.IsReadOnly = true;
		//ZCOM #32430

		FieldVO fVO_search = new FieldVO( SEARCH, Msg.getMsg( serverCtx, SEARCH ), DisplayTypeConstants.Button );
		fVO_search.WindowNo = windowNO;

		//REDMINE 38999
		fVO_subPayRule = new FieldVO( "ZSubPaymentRule_ID", Msg.translate( serverCtx, "ZSubPaymentRule_ID" ), DisplayTypeConstants.TableDir );
		fVO_subPayRule.WindowNo = windowNO;
		ArrayList<NamePair> op = subPaymentRule();
		ListBoxVO listBox = new ListBoxVO();
		listBox.setOptions(op);
		fVO_subPayRule.listBoxVO = listBox;
		fVO_subPayRule.IsMandatoryUI=true;//Redmine 43861
		fVO_subPayRule.isImpactsValue = true;
		fVO_subPayRule.isImpactsUI = true;
		//45804
		if(windowCtx.getAsInt("ZSubPaymentRule_ID") <= 0)
		{
			if(op != null && op.size() > 0 && op.get(0).getID() != null)
			{
				fVO_subPayRule.DefaultValue = op.get(0).getID();
				windowCtx.put("ZSubPaymentRule_ID", op.get(0).getID());
			}else
			{
				fVO_subPayRule.DefaultValue = "-1";
				windowCtx.put("ZSubPaymentRule_ID", "-1");
			}
		}else
		{
			fVO_subPayRule.DefaultValue = String.valueOf(windowCtx.getAsInt("ZSubPaymentRule_ID"));
		}
		getCurrentCache().put("RunSearch", "OK");
		
		//45804

		MZSubPaymentRule paymentRule = null;
		if(op != null && op.size() > 0
				&& (op.get(0).getID() != null && Integer.parseInt(op.get(0).getID()) > 0)//45804
				){
			
			paymentRule = new MZSubPaymentRule(serverCtx, Integer.parseInt(op.get(0).getID()), null);
		}
		
		
		
		FieldVO fVO_date = new FieldVO( "Date", Msg.getMsg( serverCtx, "Date" ), DisplayTypeConstants.Date );
		fVO_date.WindowNo = windowNO;
		fVO_date.DefaultValue = windowCtx.get("Date");	// TO KEEP THE PREVIOUSLY ENTERED VALUE ... TO VALIDATE WITH DEEPER TESTS
		if (fVO_date.DefaultValue == null || fVO_date.DefaultValue.length()==0)
		{
			// TODO : QUI PEUT ALLER CHERCHER LE StatementDate DANS LE Ctx ?
			int C_BankStatement_ID = -1;
			try { C_BankStatement_ID = Integer.parseInt( windowCtx.get( BANK_STATEMENT ) ); } catch (Exception e) {} 
			if (C_BankStatement_ID>0)
			{
				MBankStatement bs = new MBankStatement(serverCtx, C_BankStatement_ID, null);
				if (bs.getStatementDate() != null)
					fVO_date.DefaultValue = ""+bs.getStatementDate().getTime();
			}
		}

		
		
		FieldVO fMontant 	= new FieldVO( "Amount", Msg.translate( serverCtx,  "AmoutCaisse" ), DisplayTypeConstants.Amount, false ); //montant sortie caisse
		fMontant.DefaultValue = fTotal.DefaultValue;
		fMontant.isImpactsUI = true;
		fMontant.isImpactsValue = true;
		
		
		if(windowCtx.getAsInt("ZSubPaymentRule_ID") > 0){
			MZSubPaymentRule paymentRule2 = new MZSubPaymentRule(serverCtx, windowCtx.getAsInt("ZSubPaymentRule_ID"), null);
			if(paymentRule2 != null && !paymentRule2.isClosingCash()){
				fMontant.IsReadOnly = true;
			}
			else
			{
				fMontant.IsReadOnly = false;
				
				// TODO : QUI PEUT ALLER CHERCHER C_BankAccount_ID DANS le Ctx ?
				int C_BankStatement_ID = -1;
				try { C_BankStatement_ID = Integer.parseInt( windowCtx.get( BANK_STATEMENT ) ); } catch (Exception e) {} 
				if (C_BankStatement_ID>0)
				{
					MBankStatement bs = new MBankStatement(serverCtx, C_BankStatement_ID, null);
					String sql = "SELECT DECODE(XX_BankTftDetail, 'Y', 0, 1) FROM C_BankAccountDoc bad WHERE bad.C_BankAccount_ID=? AND bad.ZSubPaymentRule_ID=? ";
					int i = DB.getSQLValue((Trx) null, sql, bs.getC_BankAccount_ID(), paymentRule2.getZSubPaymentRule_ID());
					if (i<1) 
						fMontant.IsReadOnly = true;
				}
			}
		}
		
		//44654
		FieldVO fEcartAmt = new FieldVO(EcartAmt, Msg.translate(serverCtx, EcartAmt), DisplayTypeConstants.Amount);
		fEcartAmt.DefaultValue = "0";
		fEcartAmt.IsReadOnly = true;
		//44654

		//REDMINE 38999

		//REDMINE #44594
		FieldVO fVO_selectAll = new FieldVO( GlobalMessageConstants.SELECT_ALL, Msg.getMsg( serverCtx, "SelectAll" ), DisplayTypeConstants.YesNo );
		fVO_selectAll.WindowNo = windowNO;
		fVO_selectAll.IsMandatoryUI = true;
		fVO_selectAll.isImpactsValue = true;
		//REDMINE #44594

		//ZCOM #32430
		FieldVO fVO_refresh = new FieldVO( GlobalMessageConstants.REFRESH, Msg.getMsg( serverCtx, "Refresh" ), DisplayTypeConstants.Button );
		fVO_refresh.WindowNo = windowNO;
		//ZCOM #32430

		//ZCOM999 c_search = new SearchComponentImpl( new FieldVO[] { f_BankAccount, fVO_search } );
		c_search = new SearchComponentImpl( new FieldVO[] {fVO_subPayRule, fVO_date, fMontant, fVO_search, fVO_refresh, fEcartAmt} ); //ZCOM999 //REDMINE 38999
		components.add( c_search );
		
		//45804
		Vector< Vector< Object > > data = getData(serverCtx, windowCtx, false, -1);
		if(data !=  null && data.size() > 0)
		{
			fVO_selectAll.DefaultValue = "Y";
		}
		else
		{
			fVO_selectAll.DefaultValue = "N";
		}
		//45804
		
		//REDMINE 38999
		//ZCOM #32430
		//		c_refresh = new SearchComponentImpl( new FieldVO[] { fVO_refresh} );
		//		components.add( c_refresh );
		//ZCOM #32430
		//REDMINE 38999

		c_table = new VectorComponentImpl( "", ComponentVO.ComponentType.TABLE_MULTI, VCreateFromStatement.getTableFieldVOs( serverCtx ), null, 1, true )
		{

			@Override
			public TableModel getQueryResults( QueryVO queryVO, WindowImplIntf windowImpl, WindowCtx windowCtx, FieldVO fieldVO, int startRow, int rowCount, boolean countOnly, boolean asc, int sortCol )
			{
				s_log.finer( "Executing search" );
				// SC 745
				Vector< Vector< Object > > data = getData( serverCtx, windowCtx , asc, sortCol); 
				setData( data );

				return super.getQueryResults( queryVO, windowImpl, windowCtx, fieldVO, startRow, rowCount, countOnly, asc, sortCol );
			}

		};
		components.add( c_table );

		//REDMINE 38999
		c_total = new SearchComponentImpl( new FieldVO[] { fVO_selectAll ,fTotal } );

		components.add( c_total );


	}



	// SC 745 Adding two new parameters asc, sortCol
	public Vector< Vector< Object > > getData( Ctx ctx, WindowCtx windowCtx, boolean asc, int sortCol )
	{

		int C_BankAccount_ID = -1;
		try { C_BankAccount_ID = Integer.parseInt( windowCtx.get( BANK_ACCOUNT ) ); } catch( Exception e ) {}
		Timestamp ts = null;
		try { ts = Timestamp.valueOf(c_search.getFieldValue(windowCtx, "Date").toString()); } catch( Exception e ) {}
		Vector< Vector< Object > > data = getBankAccountData( serverCtx, C_BankAccount_ID, ts, true, 1);

		return data;
	}


	@Override
	public ChangeVO processCallback( String sender )
	{
		s_log.fine( "callback source=" + sender );

		ChangeVO changeVO = new ChangeVO();		
		MZSubPaymentRule subPayRule = null;//REDMINE 38999
		MBankStatementLine bsl = null;//REDMINE 38999
		MBankStatement bs = null;//REDMINE 38999
		MBankAccount bka = null;

		int C_BankStatement_ID = -1;
		try { C_BankStatement_ID = Integer.parseInt( windowCtx.get( BANK_STATEMENT ) ); } catch (Exception e) {} 
		bs = new MBankStatement(serverCtx, C_BankStatement_ID, null);

		
		if( sender.equals( GlobalMessageConstants.OK) || sender.equals( GlobalMessageConstants.REFRESH)){ //ZCOM #32430

			BigDecimal amount = new BigDecimal(c_search.getFieldValue(windowCtx, "Amount")==null ?"0" :c_search.getFieldValue(windowCtx, "Amount").toString());

			if(sender.equals( GlobalMessageConstants.OK)){

				if(amount == null || amount.compareTo(BigDecimal.ZERO) == 0){
					changeVO.addError( Msg.getMsg( serverCtx, "Sortie_caisse_Amt_Zero_ERR" ) );
					return changeVO;
				}
				
				//69443
				BigDecimal total = BigDecimal.ZERO;
				
				if(windowCtx.get(TOTAL) != null && !windowCtx.get(TOTAL).equals(""))
					total = new BigDecimal(windowCtx.get(TOTAL)); 
				
				BigDecimal amt = BigDecimal.ZERO;
				
				if(windowCtx.get("Amount") != null && !windowCtx.get("Amount").equals(""))
					amt = new BigDecimal(windowCtx.get("Amount"));
				
				BigDecimal ecart = BigDecimal.ZERO;
				if(windowCtx.get(EcartAmt) != null && !windowCtx.get(EcartAmt).equals(""))
					ecart = new BigDecimal(windowCtx.get(EcartAmt));
				
				if(total.compareTo(amt.add(ecart)) != 0){
					changeVO.addError( Msg.getMsg( serverCtx, "Sortie_caisse_Ecart_Amt_Zero_ERR" ) );
					return changeVO;
				}
				//69443
			}



			Timestamp ts = new Timestamp(serverCtx.getContextAsTime("#Date"));

			Vector< Vector< Object > > data = getData( serverCtx, windowCtx, false, -1 ); 



			Vector<String> columnNames = new Vector<String>(7);
			columnNames.add(Msg.getMsg(serverCtx, "Select"));
			for( FieldVO vo : VCreateFrom.getTableFieldVOs( serverCtx ) )
			{
				columnNames.add( vo.name );
			}


			//ZCOM #32430 ArrayList< String[] > selRowData = windowCtx.getSelectedRows(1);
			//REDMINE 38999 
			//			ArrayList< String[] > selRowData = windowCtx.getSelectedRows(2); //ZCOM #32430
			ArrayList< String[] > selRowData = windowCtx.getSelectedRows(1);//REDMINE 38999

			ArrayList< Integer > selRowNos = getSelectedRowNos(selRowData, data);

			//ZCOM #32430
			int count = 0;
			BigDecimal total = Env.ZERO;
			//ZCOM #32430

			if( selRowNos != null && selRowNos.size() > 0 )
			{
				//  Set Model
				DefaultTableModel model = new DefaultTableModel( data, columnNames);
				for( int i : selRowNos )
				{
					//ZCOM #32430
					count++;
					BigDecimal am = (BigDecimal)data.get(i).get(3);
					total = total.add(am);
					//ZCOM #32430
					model.setValueAt( true, i, 0 );
				}

				if( sender.equals( GlobalMessageConstants.OK) ) { //ZCOM #32430

					//					int m_C_BankStatement_ID = DB.getSQLValue(null, "SELECT C_BankStatement_ID FROM C_BankStatement WHERE C_BankAccount_ID=?", Integer.parseInt( windowCtx.get( BANK_ACCOUNT ) ));

					//REDMINE 38999
					//TODO //ici un test si les montants ne sont pas égaux
					//					BigDecimal total_origin = new BigDecimal(c_total.getFieldValue(windowCtx, "TOTAL")==null ? "0" : c_total.getFieldValue(windowCtx, "TOTAL").toString());


					//					if(total_origin.compareTo(amount) != 0)
					//					{
					
					
					int m_ZSubPaymentRule_ID = 0;
					if (c_search.getFieldValue(windowCtx, "ZSubPaymentRule_ID") != null)
						m_ZSubPaymentRule_ID = Integer.parseInt(c_search.getFieldValue(windowCtx, "ZSubPaymentRule_ID").toString());
					if(m_ZSubPaymentRule_ID > 0)
						subPayRule = new MZSubPaymentRule(serverCtx, m_ZSubPaymentRule_ID, null);

					Trx localTrx = Trx.get("CFromStmt" + C_BankStatement_ID);

					if(C_BankStatement_ID > 0) {
						bka = new MBankAccount(serverCtx,bs.getC_BankAccount_ID(), localTrx);
					}
					
					try {
						MClient client = new MClient(serverCtx,bka.getAD_Client_ID(),null);//41706
						if(bs != null && bka != null && "X".equals(bka.getBankAccountType())
								&& subPayRule!=null 
								&& subPayRule.isClosingCash() && !subPayRule.IsClosingCashDetail())//Redmine 43317
						{
							bsl = new MBankStatementLine(serverCtx, 0, localTrx);
	
							bsl.setC_BankStatement_ID(bs.getC_BankStatement_ID());
							bsl.setAD_Org_ID(bs.getAD_Org_ID());
							bsl.setDescription("Sortie Caisse du "+ sdf.format(bs.getStatementDate())); //Redmine 69408
							bsl.setStatementLineDate(bs.getStatementDate());
							bsl.setValutaDate(bs.getStatementDate());
							bsl.setDateAcct(bs.getStatementDate());
							bsl.setStmtAmt(amount.negate());
							bsl.setTrxAmt(BigDecimal.ZERO);
							bsl.setChargeAmt(amount.negate());
							
							bsl.setC_Currency_ID(client.getC_Currency_ID());//41706
							if(subPayRule.get_Value("C_Charge_ID") != null)//41706
								bsl.setC_Charge_ID(subPayRule.get_ValueAsInt("C_Charge_ID"));
							bsl.save();
	
							//
	
							int Z_CashVariance = subPayRule.get_ValueAsInt("Z_CashVariance");
							BigDecimal ecart = new BigDecimal(windowCtx.get(EcartAmt));
	
							if(Z_CashVariance > 0 && ecart != null && ecart.compareTo(BigDecimal.ZERO) != 0){
	
								bsl = new MBankStatementLine(serverCtx, 0, localTrx);
	
								bsl.setC_BankStatement_ID(bs.getC_BankStatement_ID());
								bsl.setAD_Org_ID(bs.getAD_Org_ID());
								bsl.setDescription(Msg.getMsg(serverCtx, "R_Caisse_Contrepartie")+ sdf.format(ts));
								bsl.setStatementLineDate(bs.getStatementDate());
								bsl.setValutaDate(bs.getStatementDate());
								bsl.setDateAcct(bs.getStatementDate());
								bsl.setStmtAmt(ecart.negate());
								bsl.setTrxAmt(BigDecimal.ZERO);
								bsl.setChargeAmt(ecart.negate());
								bsl.setC_Currency_ID(client.getC_Currency_ID());
								if(subPayRule.get_Value("C_Charge_ID") != null)
									bsl.setC_Charge_ID(Z_CashVariance);
								bsl.set_Value("Pay_SubPaymentRule_ID", m_ZSubPaymentRule_ID);
								bsl.save();
	
							}
						}
						if(bs != null && bka != null && "X".equals(bka.getBankAccountType())
								&& subPayRule!=null 
								&& subPayRule.isClosingCash() && subPayRule.IsClosingCashDetail())//Redmine 43317
						{
							for( int i : selRowNos )
							{
								if (((Boolean)model.getValueAt(i, 0)).booleanValue())
								{
									MBankStatementLine bslx = new MBankStatementLine (bs);
									
									//ZCOM150 Timestamp trxDate = (Timestamp)model.getValueAt(i, 1);  //  1-DateTrx
									//bsl.setStatementLineDate(trxDate);

									// Payment      
									KeyNamePair pp = (KeyNamePair)model.getValueAt(i, 2);   //  2-C_Payment_ID 
									int C_Payment_ID = pp.getKey();
									MPayment currPay = new MPayment(serverCtx, C_Payment_ID, null);
									MBPartner bp = null;
									if(currPay!=null)
										bp = new MBPartner(serverCtx, currPay.getC_BPartner_ID(), null);
									
									//bslx.setPayment(currPay); 
									
									//SC1146
//									bsl.setCheckNo(currPay.getCheckNo());
									
									// Curency from BankStatement
									MBankAccount ba = new MBankAccount(serverCtx, bs.getC_BankAccount_ID(), null);
									bslx.setC_Currency_ID(ba.getC_Currency_ID());

									// COnverted Amt (in BankAccount Currency)
									//REDMINE 30981   //REDMINE 38999
									BigDecimal amt =  (BigDecimal)model.getValueAt(i, 3); //  7-ConvAmt */ -- //SC710 // review
									bslx.setStmtAmt(amt.negate()); 
									bslx.setTrxAmt(amt.negate());
									if(subPayRule.get_Value("C_Charge_ID") != null)//41706
									{
										bslx.setC_Charge_ID(subPayRule.get_ValueAsInt("C_Charge_ID"));
										bslx.setTrxAmt(BigDecimal.ZERO);
										bslx.setChargeAmt(amt.negate());
									}
									if(bp!=null)
										bslx.setDescription("Sortie Caisse du "+ sdf.format(ts)+" détaillée, tiers : "+bp.getName());
									else
										bslx.setDescription("Sortie Caisse du "+ sdf.format(ts)+" détaillée");
									//
									s_log.fine("Line " //ZCOM150Date=" + trxDate
										+ ", Payment=" + C_Payment_ID + ", Currency=" + ba.getC_Currency_ID() + ", Amt=" + amt);
									//	
									
									//ZCOM389
									if (!bslx.save())
										s_log.log(Level.SEVERE, "Line not created #" + i);
								}   //   if selected
							}
							int Z_CashVariance = subPayRule.get_ValueAsInt("Z_CashVariance");
							BigDecimal ecart = new BigDecimal(windowCtx.get(EcartAmt));
	
							if(Z_CashVariance > 0 && ecart != null && ecart.compareTo(BigDecimal.ZERO) != 0){
	
								bsl = new MBankStatementLine(serverCtx, 0, localTrx);
	
								bsl.setC_BankStatement_ID(bs.getC_BankStatement_ID());
								bsl.setAD_Org_ID(bs.getAD_Org_ID());
								bsl.setDescription(Msg.getMsg(serverCtx, "R_Caisse_Contrepartie")+ sdf.format(ts));
								bsl.setStatementLineDate(bs.getStatementDate());
								bsl.setValutaDate(bs.getStatementDate());
								bsl.setDateAcct(bs.getStatementDate());
								bsl.setStmtAmt(ecart.negate());
								bsl.setTrxAmt(BigDecimal.ZERO);
								bsl.setChargeAmt(ecart.negate());
								bsl.setC_Currency_ID(client.getC_Currency_ID());
								if(subPayRule.get_Value("C_Charge_ID") != null)
									bsl.setC_Charge_ID(Z_CashVariance);
								bsl.set_Value("Pay_SubPaymentRule_ID", m_ZSubPaymentRule_ID);
								bsl.save();
	
							
						}
						}
						//					}//REDMINE 38999
	
						boolean success = VCreateFromStatement.saveData( serverCtx, model, C_BankStatement_ID, localTrx );
						if( !success )
						{
							//changeVO.addError( Msg.getMsg( serverCtx, "SaveError" ) );
							throw new CompiereException(Msg.getMsg( serverCtx, "SaveError" ));
						}
	

					} catch (Exception e) {
						changeVO.addError( Msg.getMsg( serverCtx, "SaveError" ) );
						localTrx.rollback();
					} finally {
						localTrx.commit();
						localTrx.close();
					}
				} //ZCOM #32430
			}

			//ZCOM #32430
			windowCtx.put(TOTAL, String.valueOf(total.doubleValue()));
			changeVO.addChangedValue(TOTAL, String.valueOf(total.doubleValue()));
			changeVO.addChangedValue("Amount", String.valueOf(total.doubleValue()));
			windowCtx.put(COUNT, String.valueOf(count));
			changeVO.addChangedValue(COUNT, String.valueOf(count));
			windowCtx.put(EcartAmt, String.valueOf(BigDecimal.ZERO));
			changeVO.addChangedValue(EcartAmt, String.valueOf(BigDecimal.ZERO));
			//ZCOM #32430			

		}
		else if( sender.equals(SEARCH))
		{

			runSearch(changeVO);

		}
		else if(sender.equals("Amount")){

			BigDecimal total = new BigDecimal(windowCtx.get(TOTAL)); //windowCtx.put(TOTAL, String.valueOf(total.doubleValue()));
			BigDecimal amt = new BigDecimal(windowCtx.get("Amount"));

			windowCtx.put(EcartAmt,String.valueOf(total.subtract(amt)));
			changeVO.addChangedValue(EcartAmt, String.valueOf(total.subtract(amt)));

		}else if(sender.equals("SelectAll")){
			if(changeVO.changedFields == null)
				changeVO.changedFields = new HashMap<String, String>();
			changeVO.changedFields.put("IsSelectAll", "Y");
		}else if(sender.equals("ClearCache")){
			clearCache();
		}else if(sender.equals("ZSubPaymentRule_ID")){
			
			runSearch(changeVO);
		}
		int ZSubPaymentRule_ID = windowCtx.getAsInt("ZSubPaymentRule_ID");
		MZSubPaymentRule paymentRule = new MZSubPaymentRule(serverCtx, ZSubPaymentRule_ID, null);
		if(changeVO.changedFields == null)
			changeVO.changedFields = new HashMap<String, String>();
		if(paymentRule != null && !paymentRule.isClosingCash())
			changeVO.changedFields.put("DisableAmt" , "Y");
		else {
			String disable = "N";

			if (bs != null)
			{
				String sql = "SELECT DECODE(XX_BankTftDetail, 'Y', 0, 1) FROM C_BankAccountDoc bad WHERE bad.C_BankAccount_ID=? AND bad.ZSubPaymentRule_ID=? ";
				int i = DB.getSQLValue((Trx) null, sql, bs.getC_BankAccount_ID(), paymentRule.getZSubPaymentRule_ID());
				if (i<1) 
					disable = "Y";
			}
			changeVO.changedFields.put("DisableAmt" , disable);
		}

		return changeVO;
	}


	private void runSearch(ChangeVO changeVO) {
		
		
		getCurrentCache().put("RunSearch", "OK");
		changeVO.queryComponents = new HashMap<Integer, QueryVO>();
		changeVO.queryComponents.put(1, null);
		//45804
		Vector< Vector< Object > > data = getData( serverCtx, windowCtx, false, -1 ); 
		if(changeVO.changedFields == null)
			changeVO.changedFields = new HashMap<String, String>();
		if(data != null && data.size() > 0)
		{
			changeVO.changedFields.put("SelectAll", "Y");
		}
		else
		{
			changeVO.changedFields.put("SelectAll", "N");
		}
		changeVO.updateWindowVO = true;
		//45804
	}



	private ArrayList<Integer> getSelectedRowNos(ArrayList<String[]> selRowData, Vector<Vector<Object>> data) {

		ArrayList<Integer> selRowNos = new ArrayList<Integer>();
		boolean selectAll = windowCtx.getAsBoolean(GlobalMessageConstants.SELECT_ALL);

		for(int i = 0; i < data.size(); i++) {

			if(selectAll){
				selRowNos.add(i);
				continue;
			}


			for(int j = 0; j < selRowData.size(); j++) {

				if(data.get(i) != null && ((KeyNamePair)(data.get(i).get(2))).getName().equals((selRowData.get(j))[1])) {
					selRowNos.add(i);
				}
			}
		}

		return selRowNos;
	}

	@Override
	public final ArrayList<ComponentImplIntf> getComponents() {
		return components;
	}

	// SC 745 adding two new parameters : Asc, SortCol
	public Vector<Vector< Object >> getBankAccountData( Ctx ctx, int C_BankAccount_ID, Timestamp ts , boolean asc, int sortCol )
	{
		Vector<Vector< Object >> data = new Vector< Vector< Object > >();	
		Object OK =  getCurrentCache().get("RunSearch");


		//REDMINE 38999
		StringBuffer sql = new StringBuffer( "SELECT pay.DateTrx, " );
		sql.append("p.C_Payment_ID, p.DocumentNo,  ");
		sql.append("p.PayAmt, " );
		sql.append("c.ISO_Code,  " );
		sql.append("spr.Value, ") ;
		//		sql.append("currencyConvert(p.PayAmt,p.C_Currency_ID,ba.C_Currency_ID,pay.DateAcct,null,p.AD_Client_ID,p.AD_Org_ID), " );  //ZCOM150 //ZCOM999 DateAcct //ZCOM1054
		sql.append("SUBSTR(bp.Name, 0 , 35)," ); //SC836
		sql.append("i.documentNo ");
		//		sql.append("pay.DateAcct, p.C_Currency_ID, p.PayAmt," //SC910-DateAcct au lieu de DateTrx");
		//		//ZCOM150 sql.append( "currencyConvert(p.PayAmt,p.C_Currency_ID,ba.C_Currency_ID,?,null,p.AD_Client_ID,p.AD_Org_ID), ");   //  #1
		//		sql.append(" SUBSTR(p.CheckNo, 0 , 12) " );//SC710 //SC836
		//		sql.append( ", org.name " );//SC745
				sql.append( ", SUBSTR(pay.description, 0, 10) " );//SC836 //Redmine 47869
		//		sql.append( ", pay.DueDate " );//Redmine 20705
		sql.append(" FROM C_BankAccount ba");
		sql.append(" INNER JOIN C_Payment_v p ON (p.C_BankAccount_ID=ba.C_BankAccount_ID)");
		sql.append(" INNER JOIN C_Payment pay ON (pay.C_Payment_ID=p.C_Payment_ID)" );
		sql.append(" INNER JOIN ZSubPaymentRule spr ON (pay.ZSubPaymentRule_ID = spr.ZSubPaymentRule_ID)");
		sql.append (" INNER JOIN C_Currency c ON (p.C_Currency_ID=c.C_Currency_ID)");
		sql.append(" LEFT OUTER JOIN C_BPartner bp ON (p.C_BPartner_ID=bp.C_BPartner_ID) ");
		sql.append(" LEFT OUTER JOIN AD_ORG org on ( org.AD_ORG_ID = pay.AD_ORG_ID)");
		sql.append(" LEFT OUTER JOIN C_Invoice i ON (i.C_Invoice_ID = pay.C_Invoice_ID) ");//REDMINE 38999
		sql.append(" WHERE p.Processed='Y' AND p.IsReconciled='N'");
		sql.append(" AND p.DocStatus IN ('CO','CL','RE','VO') AND p.PayAmt<>0");
		sql.append( " AND ba.C_BankAccount_ID=?");          
		sql.append (" AND NOT EXISTS (SELECT 1 FROM C_BankStatementLine l INNER JOIN C_BankStatement bs USING (C_BankStatement_ID) " );
		//		//Voided Bank Statements have 0 StmtAmt
		sql.append ("WHERE p.C_Payment_ID=l.C_Payment_ID AND l.StmtAmt <> 0 AND bs.AD_Client_ID=p.AD_Client_ID) "); //ZCOM418 //SC1341


		////    if (PaymentField.getText() != "")
		////    	sql.append( " AND p.documentno like '%" + PaymentField.getText() + "%' ");


		if(c_search.getFieldValue(windowCtx, "Date") != null)
			sql.append( " AND trunc(pay.DateTrx)<=trunc(?) ");

		if(c_search.getFieldValue(windowCtx, "ZSubPaymentRule_ID") != null) 
			sql.append( " AND spr.ZSubPaymentRule_ID= ?");
		
		if(OK == null){
			sql.append(" AND rownum = 0 ");		
		}

		//SC745
		if(sortCol < 0) 
			//ZCOM418
			sql.append(" ORDER BY pay.DateTrx, pay.ZSubPaymentRule_ID");
		else{
			sql.append(" ORDER BY " + fieldsNRSMatching(sortCol) + (asc ? " asc " : " desc "));
		}

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try
		{
			int i = 1;
			pstmt = DB.prepareStatement(sql.toString(), null);
			pstmt.setInt(i, C_BankAccount_ID);
			/*ZCOM150**			pstmt.setTimestamp(1, ts);*/  //ZCOM1054
			/*ZCOM150**			pstmt.setInt(2, C_BankAccount_ID);*/   //ZCOM1054
			/*ZCOM150*/ 			//pstmt.setInt(i, C_BankAccount_ID);	
			i++;

			if(c_search.getFieldValue(windowCtx, "Date") != null) {  //REDMINE 38999
				pstmt.setTimestamp(i, Timestamp.valueOf(c_search.getFieldValue(windowCtx, "Date").toString()));	
				i++;
			}		
			//

			if(c_search.getFieldValue(windowCtx, "ZSubPaymentRule_ID") != null)  //REDMINE 38999
				pstmt.setInt(i, (Integer.parseInt(c_search.getFieldValue(windowCtx, "ZSubPaymentRule_ID").toString()))); //REDMINE 38999

			//Ajouter une variable à la requete 
			rs = pstmt.executeQuery();
			while (rs.next())
			{
				Vector<Object> line = new Vector<Object>();
				line.add(new Boolean(false));       //  0-Selection
				/*SC710	*/		line.add(rs.getTimestamp(1));		//  3-DateTrx  //REDMINE 38999
				//				line.add(rs.getString(10));      	//  1-Organization
				KeyNamePair pp = new KeyNamePair(rs.getInt(2), rs.getString(3));
				line.add(pp);                       //  2-Payment 

				//				line.add(rs.getTimestamp(12));      //  4-DueDate
				line.add(rs.getBigDecimal(4));      //  5-Amount
				line.add(rs.getString(5));      	//  6-Currency
				//				line.add(rs.getBigDecimal(7));      //  7-Converted Amount
				line.add(rs.getString(6));              		 	//  8-sub payment rule
				line.add(rs.getString(7));      	//  8-BParner
				line.add(rs.getString(8));      	//  8-invoice
				line.add(rs.getString(9));		    //  9- Description //Redmine 47869
				//				line.add(rs.getString(9));			//  10-CheckNo


				//				pp = new KeyNamePair(rs.getInt(4), rs.getString(5));//SC836
				//				line.add(pp);                       //  5-Currency //SC836
				//				line.add(rs.getBigDecimal(7));      //  7-Conv Amt //SC836

				//REDMINE 38999

				data.add(line);
			}
		}
		catch (SQLException e)
		{
			s_log.log(Level.SEVERE, sql.toString(), e);
		} finally {
			DB.closeResultSet(rs);
			DB.closeStatement(pstmt);
			try {rs = null;} catch (Exception e){}
			try {pstmt = null;} catch (Exception e){}
		}

		return data;

	}

	public static String fieldsNRSMatching(int fieldColPos) {
		switch (fieldColPos) {
		case 0 : return "1";
		case 1 : return "3";
		case 2 : return "4";
		case 3 : return "5";
		case 4 : return "6";
		case 5 : return "7";
		case 6 : return "8";
		default: return "-1";
		}
	}

	//REDMINE 38999
	private ArrayList<NamePair> subPaymentRule(){

		StringBuffer sql = new StringBuffer( "SELECT DISTINCT spr.ZSubPaymentRule_ID, spr.Value " );

		sql.append(" FROM C_BankAccount ba");
		sql.append(" INNER JOIN C_Payment_v p ON (p.C_BankAccount_ID=ba.C_BankAccount_ID)");
		sql.append(" INNER JOIN C_Payment pay ON (pay.C_Payment_ID=p.C_Payment_ID)" );
		sql.append(" LEFT OUTER JOIN ZSubPaymentRule spr ON (pay.ZSubPaymentRule_ID = spr.ZSubPaymentRule_ID)");
		sql.append(" WHERE p.Processed='Y' AND p.IsReconciled='N'");
		sql.append(" AND p.DocStatus IN ('CO','CL','RE','VO') AND p.PayAmt<>0");
		sql.append( " AND p.C_BankAccount_ID=?");          
		sql.append (" AND NOT EXISTS (SELECT 1 FROM C_BankStatementLine l INNER JOIN C_BankStatement bs USING (C_BankStatement_ID) " );
		sql.append ("WHERE p.C_Payment_ID=l.C_Payment_ID AND l.StmtAmt <> 0 AND bs.AD_Client_ID=p.AD_Client_ID) ");

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement(sql.toString(), null);
			pstmt.setInt(1, Integer.parseInt( windowCtx.get( BANK_ACCOUNT ) ));	

			rs = pstmt.executeQuery();
			while (rs.next())
			{
				p.add(new KeyNamePair(rs.getInt(1), rs.getString(2)));
			}
		}
		catch (SQLException e)
		{
			s_log.log(Level.SEVERE, sql.toString(), e);
		} finally {
			DB.closeResultSet(rs);
			DB.closeStatement(pstmt);
			try {rs = null;} catch (Exception e){}
			try {pstmt = null;} catch (Exception e){}
		}
    	
    	return p;
    }
    
    //44642
    
    private HashMap<String, Object> getCurrentCache(){
    	if(cache.get(getCashKey()) == null)
    			cache.put(getCashKey(), new HashMap<String, Object>());
    	return cache.get(getCashKey());
    }
    
    
    
    private String getCashKey(){
    	
    	int C_BankStatement_ID = 0;
    	try { C_BankStatement_ID = Integer.parseInt( windowCtx.get( BANK_STATEMENT ) ); } catch (Exception e) {}
    	if(C_BankStatement_ID == 0)
    		return null;
    	
    	String retValue = serverCtx.getAD_User_ID() + "_" + C_BankStatement_ID ;
    	
    	return retValue;
    }
    
	private void clearCache() {
		cache.put(getCashKey(), null);
	}
	
	private boolean createDetailBankStatementLine(Ctx ctx, TableModel model, int C_BankStatement_ID , Trx trxName)
	{
		boolean succes = false;
		return succes;
		
	}

}
