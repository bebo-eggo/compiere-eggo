/*
All parts are Copyright (C) 2002-2007 Audaxis S.A.  All Rights Reserved.

This program is free software; you can redistribute it and/or
modify it under the terms of the GNU General Public License
as published by the Free Software Foundation; either version 2
of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, write to the Free Software
Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
*/
package com.audaxis.compiere.process;

import org.compiere.model.MInventory;

import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;

import org.compiere.util.CompiereUserException;
import org.compiere.util.DB;


/**
 * ZCOM282
 *
 * 28/01 on g�n�re les listes d'inventaire et on met la date du 31/01
 * on a une mauvaise qt� th�orique
 * 31/01 Stock de 10
 * 31/01 Expedition de -2 ==> Stock Physique de 8
 * 01/02 On commence � compter
 * 01/02 On entre seulement maintenant la production de 10 qui a �t� faite le 31 et donc devait bien
 * etre compt�e dans le stock ==> Stock Physique de 18
 * 01/02 Exp�dition de -4
 *
 * Grace � ce process on peut remettre la quantit� th�orique � jour par rapport � un stock � date
 * et non pas par rapport au stock du jour auquel on g�n�re la liste.
 *
 * @author Vincent Harcq
 */
public class InventoryCountAsOfDateUpdate extends SvrProcess
{
    private int p_M_Inventory_ID = 0;

    protected void prepare()
    {
        ProcessInfoParameter[] para = getParameter();

        for (int i = 0; i < para.length; i++)
        {
            String name = para[i].getParameterName();

            if (para[i].getParameter() == null)
            {
                ;
            }
            else
            {
                log.severe("prepare - Unknown Parameter: " + name);
            }
        }

        p_M_Inventory_ID = getRecord_ID();
    }

    /* (non-Javadoc)
     * @see org.compiere.process.SvrProcess#doIt()
     */
    protected String doIt() throws Exception
    {
        log.info("doIt - M_Inventory_ID=" + p_M_Inventory_ID);

        MInventory inventory = new MInventory(getCtx(), p_M_Inventory_ID,
                get_TrxName());
        int mWhId = inventory.getM_Warehouse_ID();

        if (mWhId == 0)
        {
            throw new CompiereUserException(
                "Warehouse Not found: M_Inventory_ID=" + p_M_Inventory_ID);
        }

        String sql = "UPDATE M_InventoryLine l " + "SET (QtyBook) = " +
            "(SELECT (YR_Qty_ASOFloc(M_Product_ID, l.M_Locator_ID, " +
            DB.TO_DATE(inventory.getMovementDate()) + " ,l.M_AttributeSetInstance_ID)) FROM dual), " +
            " Updated=SysDate," + " UpdatedBy=" + getAD_User_ID()//
             + " WHERE M_Inventory_ID=" + p_M_Inventory_ID +
            " AND EXISTS (SELECT * FROM M_StorageDetail s " +
            "WHERE s.M_Product_ID=l.M_Product_ID AND s.M_Locator_ID=l.M_Locator_ID" +
            " AND COALESCE(s.M_AttributeSetInstance_ID,0)=COALESCE(l.M_AttributeSetInstance_ID,0))";

        //	log.debug("doIt - " + sql);
        int no = DB.executeUpdate(get_Trx(), sql);
//        sql = "UPDATE M_InventoryLine l " + "SET QtyCount = QtyBook, " +
//            " Updated=SysDate," + " UpdatedBy=" + getAD_User_ID()//
//             + " WHERE M_Inventory_ID=" + p_M_Inventory_ID;
        //ZCOM687
        //			+ " AND EXISTS (SELECT * FROM M_StorageDetail s "
        //				+ "WHERE s.M_Product_ID=l.M_Product_ID AND s.M_Locator_ID=l.M_Locator_ID"
        //				+ " AND COALESCE(s.M_AttributeSetInstance_ID,0)=COALESCE(l.M_AttributeSetInstance_ID,0))";
        //ZCOM687
//        no = DB.executeUpdate(get_Trx(), sql);
        //	Multiple Lines for one item
        sql = "UPDATE M_InventoryLine SET IsActive='N' " +
            "WHERE M_Inventory_ID=" + p_M_Inventory_ID +
            " AND (M_Product_ID, M_Locator_ID, M_AttributeSetInstance_ID) IN " +
            "(SELECT M_Product_ID, M_Locator_ID, M_AttributeSetInstance_ID " +
            "FROM M_InventoryLine " + "WHERE M_Inventory_ID=" +
            p_M_Inventory_ID +
            " GROUP BY M_Product_ID, M_Locator_ID, M_AttributeSetInstance_ID " +
            "HAVING COUNT(*) > 1)";

        int multiple = DB.executeUpdate(get_Trx(), sql);

        if (multiple > 0)
        {
            return "@M_InventoryLine_ID@ - #" + no +
            " --> @InventoryProductMultiple@";
        }

        return "@M_InventoryLine_ID@ - #" + no;
    }
}
