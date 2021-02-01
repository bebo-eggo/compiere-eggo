package com.audaxis.compiere.gwt;

import static org.compiere.common.constants.CreateFromConstants.SEARCH;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Vector;

import javax.swing.table.DefaultTableModel;

import org.compiere.common.QueryVO;
import org.compiere.common.TableModel;
import org.compiere.common.constants.DisplayTypeConstants;
import org.compiere.common.constants.GlobalMessageConstants;
import org.compiere.gwt.server.component.SearchComponentImpl;
import org.compiere.gwt.server.component.VectorComponentImpl;
import org.compiere.gwt.server.window.WindowImpl;
import org.compiere.intf.ComponentImplIntf;
import org.compiere.intf.WindowImplIntf;
import org.compiere.util.CContext;
import org.compiere.util.CLogger;
import org.compiere.util.Ctx;
import org.compiere.util.Env;
import org.compiere.util.KeyNamePair;
import org.compiere.util.Msg;
import org.compiere.vos.ChangeVO;
import org.compiere.vos.ComponentVO;
import org.compiere.vos.FieldVO;
import org.compiere.vos.UWindowID;
import org.compiere.vos.WindowCtx;

import com.audaxis.compiere.grid.ZCreateFromOpenInvoice;
import com.audaxis.compiere.model.MPayment;

public class GWTCreateFromOpenInvoice extends WindowImpl implements WindowImplIntf {

	private static CLogger s_log =  CLogger.getCLogger(GWTCreateFromOpenInvoice.class);
	
	protected ArrayList<ComponentImplIntf> components = new ArrayList<ComponentImplIntf>();

	final SearchComponentImpl c_search;
	final SearchComponentImpl c_refresh; //ZCOM #32434
	final VectorComponentImpl c_table;
	
	protected final Ctx serverCtx;
	protected final WindowCtx windowCtx;
	protected final UWindowID m_uid;
	protected final int windowNO;
	
	//ZCOM #32434
	private static final String TOTAL = "TOTAL";
	private static final String COUNT = "COUNT";
	private static final String SOLDE = "SOLDE";
	//ZCOM #32434

	public GWTCreateFromOpenInvoice(int windowNO, final CContext serverCtx, WindowCtx windowCtx, UWindowID uid) {
		this.serverCtx = serverCtx;
		this.windowCtx = windowCtx;
		this.m_uid = uid;
		this.windowNO = windowNO;
		
        FieldVO fVO_search = new FieldVO(SEARCH, Msg.getMsg(serverCtx, SEARCH), DisplayTypeConstants.Button);
		fVO_search.WindowNo = windowNO;
		
		//ZCOM #32434
		FieldVO fTotal 	= new FieldVO( TOTAL, Msg.translate( serverCtx,  TOTAL ), DisplayTypeConstants.Amount, false );
		fTotal.DefaultValue = "0.00";
		fTotal.IsReadOnly = true;

		FieldVO fCount 	= new FieldVO( COUNT, Msg.translate( serverCtx, COUNT ), DisplayTypeConstants.Integer, false );
		fCount.DefaultValue = "0";
		fCount.IsReadOnly = true;
		
		FieldVO fSolde 	= new FieldVO( SOLDE, Msg.translate( serverCtx,  SOLDE ), DisplayTypeConstants.Amount, false );
		fSolde.DefaultValue = "0.00";
		fSolde.IsReadOnly = true;
		
		FieldVO fVO_refresh = new FieldVO( GlobalMessageConstants.REFRESH, Msg.getMsg( serverCtx, "Refresh" ), DisplayTypeConstants.Button );
		fVO_refresh.WindowNo = windowNO;
		
		c_refresh = new SearchComponentImpl( new FieldVO[] { fTotal, fCount, fSolde, fVO_refresh } );
		components.add( c_refresh );
		//ZCOM #32434
		
		
		c_search = new SearchComponentImpl(new FieldVO[] { fVO_search } );
		components.add(c_search);

		c_table = new VectorComponentImpl("", ComponentVO.ComponentType.TABLE_MULTI, ZCreateFromOpenInvoice.getTableFieldVOs(serverCtx), null, 1, true)
		{

			@Override
			public TableModel getQueryResults( QueryVO queryVO, WindowImplIntf windowImpl, WindowCtx windowCtx, FieldVO fieldVO, int startRow, int rowCount, boolean countOnly, boolean asc, int sortCol )
			{
				s_log.severe( "Executing search" );
		        
				Vector<Vector<Object>> data = getData(serverCtx, windowCtx, asc, sortCol);
				setData(data);
				
				return super.getQueryResults( queryVO, windowImpl, windowCtx, fieldVO, startRow, rowCount, countOnly, asc, sortCol);
			}
			
		};
		components.add(c_table);
	}

	public static Vector< Vector< Object > > getData( Ctx ctx, WindowCtx windowCtx, boolean asc, int sortCol) {
		int C_Payment_ID = Integer.parseInt(windowCtx.get("C_Payment_ID"));
		Vector< Vector< Object > > data = ZCreateFromOpenInvoice.getData(ctx, C_Payment_ID, asc, sortCol);
		return data;
	}
	
	@Override
	public ArrayList<ComponentImplIntf> getComponents() {
		return components;
	}

	@Override
	public ChangeVO processCallback(String sender) {
		ChangeVO changeVO = new ChangeVO();
		if( sender.equals( GlobalMessageConstants.OK)
				|| sender.equals( GlobalMessageConstants.REFRESH) //ZCOM #32434
				){
			Vector<Vector<Object>> data = getData(serverCtx, windowCtx, false, -1);
			
			int C_Payment_ID = -1;
			try { C_Payment_ID = Integer.parseInt( windowCtx.get( "C_Payment_ID" ) ); } catch (Exception e) {} 

			Vector<String> columnNames = new Vector<String>(5);
			columnNames.add(Msg.getMsg(serverCtx, "Select"));
			for( FieldVO vo : ZCreateFromOpenInvoice.getTableFieldVOs( serverCtx ) )
			{
				columnNames.add( vo.name );
			}

			//ZCOM #32434
			int count = 0;
			BigDecimal total = Env.ZERO;
			BigDecimal solde = Env.ZERO;
			//ZCOM #32434
			
			ArrayList< String[] > selRowData = windowCtx.getSelectedRows(2);
			
			ArrayList< Integer > selRowNos = getSelectedRowNos(selRowData, data);
			
			if( selRowNos != null && selRowNos.size() > 0 )
			{

				//  Set Model
				DefaultTableModel model = new DefaultTableModel(data, columnNames);
				for( int i : selRowNos )
				{
					//ZCOM #32434
					count++;
					BigDecimal amount = (BigDecimal)data.get(i).get(ZCreateFromOpenInvoice.POS_CONVERTED_AMOUNT);
					total = total.add(amount);
					//ZCOM #32434
					model.setValueAt( true, i, 0 );
				}
				if( sender.equals( GlobalMessageConstants.OK) ) { //ZCOM #32430
					boolean success = ZCreateFromOpenInvoice.saveData(serverCtx, model, C_Payment_ID);
					if( !success )
					{
						changeVO.addError( Msg.getMsg( serverCtx, "SaveError" ) );
					}
				}
				MPayment payment = new MPayment(serverCtx, C_Payment_ID, null);
				BigDecimal allocated = ZCreateFromOpenInvoice.getAllocatedAmt(serverCtx, C_Payment_ID);//ZCOM #32434
				solde = payment.getPayAmt().subtract(total.add(allocated));
			}
			
			//ZCOM #32434
			windowCtx.put(TOTAL, String.valueOf(total.doubleValue()));
			changeVO.addChangedValue(TOTAL, String.valueOf(total.doubleValue()));
			windowCtx.put(COUNT, String.valueOf(count));
			changeVO.addChangedValue(COUNT, String.valueOf(count));
			windowCtx.put(SOLDE, String.valueOf(solde));
			changeVO.addChangedValue(SOLDE, String.valueOf(solde));
			//ZCOM #32434
			
		}
		else if (SEARCH.equalsIgnoreCase(sender)) {
			changeVO.queryComponents = new HashMap<Integer, QueryVO>();
			changeVO.queryComponents.put(1, null);
		}

		return changeVO;
	}
	
	private ArrayList<Integer> getSelectedRowNos(ArrayList<String[]> selRowData, Vector<Vector<Object>> data) {
		
		ArrayList<Integer> selRowNos = new ArrayList<Integer>();
		
		for(int i = 0; i < data.size(); i++) {
			for(int j = 0; j < selRowData.size(); j++) {
			
				if(data.get(i) != null && ((KeyNamePair)(data.get(i).get(1))).getName().equals((selRowData.get(j))[0])) {
					selRowNos.add(i);
				}
			}
		}
		
		return selRowNos;
	}



}
