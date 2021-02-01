package com.audaxis.compiere.gwt;

import org.compiere.gwt.server.window.CreateFromStatementWindowImpl;
import org.compiere.gwt.server.window.PaymentAllocationWindowImpl;
import org.compiere.gwt.server.window.XX_CreateShipEggoWindowImpl;
import org.compiere.intf.WindowImplIntf;
import org.compiere.util.CContext;
import org.compiere.util.CLogger;
import org.compiere.vos.UWindowID;
import org.compiere.vos.WindowCtx;

public class MCreateFrom {

	protected CLogger log = CLogger.getCLogger(MCreateFrom.class);
	
    public WindowImplIntf getInstance(String columnName, int windowNO, CContext serverCtx, WindowCtx windowCtx, UWindowID uid)
    {
    	log.severe("Column Name = "+columnName);
    	WindowImplIntf ret = null;

        if (columnName.equalsIgnoreCase("ZCreateFromOpenInvoice"))
        {
        	ret = new GWTCreateFromOpenInvoice(windowNO, serverCtx, windowCtx, uid);
        }

        if (columnName.equalsIgnoreCase("ZCreateFromOpenInvoiceSt"))
        {
        	ret = new GWTCreateFromOpenInvoiceSt(windowNO, serverCtx, windowCtx, uid);
        }

        if (columnName.equalsIgnoreCase("ZCreateFromOpenPayment"))
        {
        	ret = new GWTCreateFromOpenPayment(windowNO, serverCtx, windowCtx, uid);
        }

        if (columnName.equalsIgnoreCase("ZCreateFromDeliveryCheck"))
        {
        	ret = new GWTCreateFromDeliveryCheck(windowNO, serverCtx, windowCtx, uid);
        }

        if (columnName.equalsIgnoreCase("ZCreateFromPaymentSelection"))
        {
        	ret = new GWTCreateFromPaymentSelection(windowNO, serverCtx, windowCtx, uid);
        }
        if (columnName.equalsIgnoreCase("ZCreateFromStatement"))
        {
        	ret = new CreateFromStatementWindowImpl(windowNO, serverCtx, windowCtx, uid);
        }
        
        if (columnName.equalsIgnoreCase("XX_CreateShipEggoWindowImpl"))
        {
        	ret = new XX_CreateShipEggoWindowImpl(windowNO, serverCtx, windowCtx, uid);
        }
        
     // #26891 : FIN : gestion des escomptes au niveau de la ligne d'extrait.
        if (columnName.equalsIgnoreCase("ZCreateFromPaymentAllocation"))
        	ret = new PaymentAllocationWindowImpl(windowNO, serverCtx, windowCtx, uid);
        // #26891 : FIN : gestion des escomptes au niveau de la ligne d'extrait.
        return ret;
    }
}
