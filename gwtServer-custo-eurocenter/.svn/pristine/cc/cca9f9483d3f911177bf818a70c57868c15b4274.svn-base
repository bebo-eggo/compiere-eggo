package com.audaxis.compiere.gwt;

import static org.compiere.common.constants.CreateFromConstants.SEARCH;

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
import org.compiere.util.KeyNamePair;
import org.compiere.util.Msg;
import org.compiere.vos.ChangeVO;
import org.compiere.vos.ComponentVO;
import org.compiere.vos.FieldVO;
import org.compiere.vos.UWindowID;
import org.compiere.vos.WindowCtx;

import com.audaxis.compiere.grid.ZCreateFromOpenPayment;

public class GWTCreateFromOpenPayment extends WindowImpl implements WindowImplIntf {

	private static CLogger s_log =  CLogger.getCLogger(GWTCreateFromOpenPayment.class);
	
	protected ArrayList<ComponentImplIntf> components = new ArrayList<ComponentImplIntf>();

	final SearchComponentImpl c_search;
	final VectorComponentImpl c_table;
	
	protected final Ctx serverCtx;
	protected final WindowCtx windowCtx;
	protected final UWindowID m_uid;
	protected final int windowNO;

	public GWTCreateFromOpenPayment(int windowNO, final CContext serverCtx, WindowCtx windowCtx, UWindowID uid) {
		this.serverCtx = serverCtx;
		this.windowCtx = windowCtx;
		this.m_uid = uid;
		this.windowNO = windowNO;
		
        FieldVO fVO_search = new FieldVO(SEARCH, Msg.getMsg(serverCtx, SEARCH), DisplayTypeConstants.Button);
		fVO_search.WindowNo = windowNO;
		
		c_search = new SearchComponentImpl(new FieldVO[] { fVO_search } );
		components.add(c_search);

		c_table = new VectorComponentImpl("", ComponentVO.ComponentType.TABLE_MULTI, ZCreateFromOpenPayment.getTableFieldVOs(serverCtx), null, 1, false)
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

	public static Vector< Vector< Object > > getData( Ctx ctx, WindowCtx windowCtx , boolean asc, int sortCol ) {
		int Z_CheckDelivery_ID = Integer.parseInt(windowCtx.get("Z_CheckDelivery_ID"));
		int C_BankAccount_ID=Integer.parseInt(windowCtx.get("C_BankAccount_ID"));
		Vector< Vector< Object > > data = ZCreateFromOpenPayment.getData(ctx, Z_CheckDelivery_ID, C_BankAccount_ID, asc, sortCol);
		return data;
	}
	
	@Override
	public ArrayList<ComponentImplIntf> getComponents() {
		return components;
	}

	@Override
	public ChangeVO processCallback(String sender) {
		ChangeVO changeVO = new ChangeVO();
		if( sender.equals( GlobalMessageConstants.OK) ) {
			Vector<Vector<Object>> data = getData(serverCtx, windowCtx, false, -1);
			
			int Z_CheckDelivery_ID = -1;
			try { Z_CheckDelivery_ID = Integer.parseInt( windowCtx.get( "Z_CheckDelivery_ID" ) ); } catch (Exception e) {} 

			Vector<String> columnNames = new Vector<String>(5);
			columnNames.add(Msg.getMsg(serverCtx, "Select"));
			for( FieldVO vo : ZCreateFromOpenPayment.getTableFieldVOs( serverCtx ) )
			{
				columnNames.add( vo.name );
			}

			ArrayList< String[] > selRowData = windowCtx.getSelectedRows(1);
			
			ArrayList< Integer > selRowNos = getSelectedRowNos(selRowData, data);
			
			if( selRowNos != null && selRowNos.size() > 0 )
			{

				//  Set Model
				DefaultTableModel model = new DefaultTableModel( data, columnNames);
				for( int i : selRowNos )
				{
					model.setValueAt( true, i, 0 );
				}

				boolean success = ZCreateFromOpenPayment.saveData(serverCtx, model, Z_CheckDelivery_ID);
				if( !success )
				{
					changeVO.addError( Msg.getMsg( serverCtx, "SaveError" ) );
				}
			}
			
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
			
				if(data.get(i) != null && ((KeyNamePair)(data.get(i).get(2))).getName().equals((selRowData.get(j))[1])) {
					selRowNos.add(i);
				}
			}
		}
		
		return selRowNos;
	}

}
