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
package com.audaxis.compiere.model;

import org.compiere.model.MAllocationHdr;
import org.compiere.model.MAllocationLine;
import org.compiere.model.MClient;
import org.compiere.model.MInvoice;
import org.compiere.model.MInvoiceLine;
import org.compiere.model.MPriceList;
import org.compiere.model.MTax;
import org.compiere.model.X_Z_TvaAEncaissLine;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.Trx;

import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.compiere.util.Ctx;


public class MTvaAEncaissLine extends X_Z_TvaAEncaissLine
{
    public MTvaAEncaissLine(Ctx ctx, int Z_TvaAEncaissLine_ID,
        Trx trxName)
    {
        super(ctx, Z_TvaAEncaissLine_ID, trxName);
    }

    public MTvaAEncaissLine(Ctx ctx, ResultSet rs, Trx trxName)
    {
        super(ctx, rs, trxName);
    }

    /**
     * Create a declaration line based on an Invoice Line.  Sets all fields.
     * @param il MInvoiceLine
     */
    public void setInvoiceLine(MInvoiceLine il)
    {
        MInvoice i = new MInvoice(getCtx(), il.getC_Invoice_ID(), get_Trx());
        MPriceList mpl = new MPriceList(getCtx(), i.getM_PriceList_ID(), get_Trx());
        setC_Invoice_ID(il.getC_Invoice_ID());
        setC_InvoiceLine_ID(il.getC_InvoiceLine_ID());
        setIsSOTrx(i.isSOTrx());
        setM_Product_ID(il.getM_Product_ID());
        setC_Charge_ID(il.getC_Charge_ID());
        setC_Tax_ID(il.getC_Tax_ID());
        setDateAcct(i.getDateAcct());
        setLine(il.getLine());
        setGrandTotal(il.getLineTotalAmt());
        setTaxAmt(il.getTaxAmt());
        setC_BPartner_ID(i.getC_BPartner_ID());
        setC_BPartner_Location_ID(i.getC_BPartner_Location_ID());

        // !! En ventes la Tax est zero sur les lignes de factures
        // Donc on la recalcule ici
        // En achat c'est normal de ne PAS la recalculer car on peut la changer en maintenance 
        // facture fournisseur.  Cela arrive qd le fournisseur envoit une mauvaise facture
        BigDecimal TaxAmt = Env.ZERO;
        MTax tax = null;
        if (il.getC_Tax_ID() != 0)
        {
            tax = new MTax(getCtx(), getC_Tax_ID(), get_Trx());

            if (i.isSOTrx()
            /** && il.getC_Tax_ID() != 0 **/ )
            {
                TaxAmt = tax.calculateTax(il.getLineNetAmt(),
                        il.isTaxIncluded(), il.getPrecision());
                setTaxAmt(TaxAmt);
                //ZCOMM
                if(!il.isTaxIncluded())
                	setGrandTotal(il.getLineNetAmt().add(TaxAmt));
                else
                	setGrandTotal(il.getLineNetAmt());
            }

            //AMA: Il nous manque le taux TVA pour les codes TVA o� c'est un parent qui s'applique
            // e.g. pour les �changes europ�ens, etc...
            //On force donc le recalcul du montant TVA (par le taux + 'enfant') pour les taux qui sont 'parents'
            if (tax.isSummary())
            {
                try
                {
                    StringBuffer sql = new StringBuffer(
                            "SELECT C_Tax_ID FROM C_Tax where Parent_Tax_ID=? AND RATE > 0");
                    PreparedStatement ps = DB.prepareStatement(sql.toString(),
                    		get_Trx());
                    ps.setInt(1, tax.getC_Tax_ID());

                    ResultSet rs = ps.executeQuery();

                    while (rs.next())
                    {
                        int subtax_id = rs.getInt(1);
                        MTax subtax = new MTax(getCtx(), subtax_id,
                        		get_Trx());
                        TaxAmt = subtax.calculateTax(il.getLineNetAmt(),
                                il.isTaxIncluded(), il.getPrecision());
                        setTaxAmt(TaxAmt);

                        //Ici on laisse expr�s le GrandTotal tel quel pour distinguer les taux parents recalcul�s des 
                        //autres
                    }

                    rs.close();
                    ps.close();
                }
                catch (Exception ex)
                {
                }
            }
        }

        //fin AMA
        MAllocationHdr[] as = MAllocationHdr.getOfInvoice(getCtx(), il.getC_Invoice_ID(), get_Trx());

        if (as.length > 0)
        {
            MAllocationHdr ash = as[0];
            setPayDate(ash.getDateAcct());
            setC_AllocationHdr_ID(ash.getC_AllocationHdr_ID());

            MAllocationLine[] lines = MAllocationHdrProxy.getLinesForInvoice(ash, il.getC_Invoice_ID());

            for (int j = 0; j < lines.length; j++)
            {
            	MAllocationLine line = lines[j];

                if ((line.getC_Invoice_ID() == getC_Invoice_ID()) &&
                        (line.getC_Payment_ID() != 0))
                {
                    setC_Payment_ID(line.getC_Payment_ID());

                    break;
                }
            }
        }
        if(!il.isTaxIncluded())
        	setTaxBaseAmt(il.getLineNetAmt());
        else
        	setTaxBaseAmt(il.getLineNetAmt().subtract(TaxAmt));
        
        setInvoiceAmt(i.getGrandTotal());

        /*ZCOM509**DEBUT*/
        int C_Currency_ID = MClient.get(getCtx()).getC_Currency_ID();

        /*Conversion des Montants*/
        BigDecimal[] Amts = new BigDecimal[4];
        Amts[0] = getInvoiceAmt();
        Amts[1] = getGrandTotal();
        Amts[2] = getTaxAmt();
        Amts[3] = getTaxBaseAmt();

        for (int j = 0; j < Amts.length; j++)
        {
            PreparedStatement ps2 = null;
            ResultSet rs2 = null;

            try
            {
                String SqlClause2 = "select CurrencyConvert(?, ?, ?, ?, ?, ?, ?) from dual";
                ps2 = DB.prepareStatement(SqlClause2, get_Trx());
                ps2.setBigDecimal(1, Amts[j]);
                ps2.setInt(2, i.getC_Currency_ID());
                ps2.setInt(3, C_Currency_ID);
                ps2.setTimestamp(4, i.getDateAcct());
                ps2.setInt(5, i.getC_ConversionType_ID());
                ps2.setInt(6, i.getAD_Client_ID());
                ps2.setInt(7, i.getAD_Org_ID());

                rs2 = ps2.executeQuery();

                while (rs2.next())
                {
                    Amts[j] = rs2.getBigDecimal(1);
                }
            }
            catch (Exception ex)
            {
            }
            finally
            {
                try
                {
                    if (rs2 != null)
                    {
                        rs2.close();
                    }

                    if (ps2 != null)
                    {
                        ps2.close();
                    }
                }
                catch (SQLException e)
                {
                }

                ps2 = null;
                rs2 = null;
            }
        }

        setInvoiceAmt(Amts[0]);
        setGrandTotal(Amts[1]);
        setTaxAmt(Amts[2]);
        setTaxBaseAmt(Amts[3]);

        /*ZCOM509**FIN*/
    }
}
