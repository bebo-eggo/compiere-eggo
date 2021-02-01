package Util;

import org.compiere.model.MProduct;
import org.compiere.util.Ctx;
import org.compiere.util.DB;
import org.compiere.util.Trx;

import com.audaxis.erp.json.OrderLines;

public class ProductTypeOA {
	
	private MProduct mp;
	private int z_TypeOA_ID;
	private OrderLines ol;

	public ProductTypeOA(MProduct mp, int z_TypeOA_ID, OrderLines OL) {
		super();
		this.mp = mp;
		this.z_TypeOA_ID = z_TypeOA_ID;
		this.ol = OL;
	}
	
	public static ProductTypeOA getProductTypeOA(Ctx ctx, MProduct mp, OrderLines OL, Trx trx) {
		int Z_TypeOA_ID = DB.getSQLValue(trx, "SELect NVL(zssf.Z_TypeOA_ID, zt.Z_TypeOA_ID) as Z_TypeOA_ID from M_Product p INNER JOIN Z_TYPEOA zt ON (zt.AD_Client_ID = p.AD_Client_ID and zt.IsDefault = 'Y') "
				+ "LEFT JOIN Z_S_S_FAMILLE zssf ON (zssf.Z_S_S_FAMILLE_ID = p.Z_S_S_FAMILLE_ID) where p.M_Product_ID = ?", mp.getM_Product_ID());
		
		return new ProductTypeOA(mp,Z_TypeOA_ID,OL );
		
	}

	public MProduct getProduct() {
		return mp;
	}

	public void setProduct(MProduct mp) {
		this.mp = mp;
	}

	public int getZ_TypeOA_ID() {
		return z_TypeOA_ID;
	}

	public void setZ_TypeOA_ID(int z_TypeOA_ID) {
		this.z_TypeOA_ID = z_TypeOA_ID;
	}

	public OrderLines getOl() {
		return ol;
	}

	public void setOl(OrderLines ol) {
		this.ol = ol;
	}
	
	

}
