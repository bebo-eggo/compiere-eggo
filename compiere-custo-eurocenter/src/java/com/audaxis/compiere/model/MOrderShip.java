package com.audaxis.compiere.model;

import java.sql.ResultSet;

import org.compiere.util.Ctx;
import org.compiere.util.Trx;

public class MOrderShip extends X_Z_OrderShip {

	private int m_Warehouse_ID = 0;
	public MOrderShip(Ctx ctx, int Z_OrderShip_ID, Trx trx) {
		super(ctx, Z_OrderShip_ID, trx);
		// TODO Auto-generated constructor stub
	}

	public MOrderShip(Ctx ctx, ResultSet rs, Trx trx) {
		super(ctx, rs, trx);
		// TODO Auto-generated constructor stub
	}

	public void setM_Warehouse_ID (int M_Warehouse_ID)
    {
		m_Warehouse_ID = Integer.valueOf(M_Warehouse_ID);
        
    }
    
    public int getM_Warehouse_ID() 
    {
        return m_Warehouse_ID;
        
    }
}
