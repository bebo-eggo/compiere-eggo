/**
 * 
 */
package org.compiere.gwt.server.window;

import static org.compiere.common.constants.PAttributeWindowConstants.*;

import java.math.*;
import java.sql.*;
import java.util.*;

import org.compiere.common.constants.*;
import org.compiere.gwt.server.component.*;
import org.compiere.intf.*;
import org.compiere.model.*;
import org.compiere.util.*;
import org.compiere.vos.*;

/**
 * @author gwu
 *
 */
public class PAttributeSetInstanceWindowImpl extends WindowImpl 
{

	private final CLogger log = CLogger.getCLogger( getClass() );
	
	MAttributeSetInstance m_masi = null;
	boolean m_productWindow = false;
	final SearchComponentImpl c_search;
	
	FieldVO fLot = null;

	protected ArrayList<ComponentImplIntf> components = new ArrayList<ComponentImplIntf>();

	protected final Ctx serverCtx;

	protected final WindowCtx windowCtx;

	protected final UWindowID m_uid;

	protected final int windowNO;
	
	private final String LANGUAGE = "#AD_Language";
	
	boolean error = false;		// ZCOM999 - #25922
	/**
	 * @param windowNO TODO
	 * @param serverCtx TODO
	 * @param windowCtx
	 * @param uid
	 */
	public PAttributeSetInstanceWindowImpl( int windowNO, Ctx serverCtx, WindowCtx windowCtx, UWindowID uid )
	{
		this.serverCtx = serverCtx;
		this.windowCtx = windowCtx;
		this.m_uid = uid;
		this.windowNO = windowNO;
		
		int M_AttributeSetInstance_ID = windowCtx.getAsInt( ATTRIBUTE_SET_INSTANCE );
		int M_Product_ID = windowCtx.getAsInt( PRODUCT );
		int AD_Column_ID = windowCtx.getAsInt( COLUMN );
		
		m_productWindow = (AD_Column_ID == 8418);		//	HARDCODED
		
		boolean isSOTrx = windowCtx.getAsBoolean( ISSOTRX );
		

		// boolean error = false;  // ZCOM999 - #25922
		MAttributeSet mas = null;
		m_masi = MAttributeSetInstance.get( serverCtx, M_AttributeSetInstance_ID, M_Product_ID );

		String errorMsg = null;
		
		if( m_masi != null )
			mas = m_masi.getMAttributeSet();
		else
		{
			errorMsg = "No Model for M_AttributeSetInstance_ID=" + M_AttributeSetInstance_ID + ", M_Product_ID="
			+ M_Product_ID;
			log.warning( errorMsg );
			error = true;
		}
		
		if( mas == null )
		{
			errorMsg = Msg.translate( serverCtx, "PAttributeNoAttributeSet" );
			log.warning( errorMsg );
			error = true;
		}
		//	Product has no Instance Attributes
		else if (!m_productWindow && !mas.isInstanceAttribute())
		{
			errorMsg = Msg.translate( serverCtx, "PAttributeNoInstanceAttribute" );
			log.warning( errorMsg );
			error = true;
		}
			
			

		if( !error )
		{
			ArrayList< FieldVO > fieldVOs = new ArrayList< FieldVO >();

			// the spacer is used to create newlines in the field region
			FieldVO fSpacer = new FieldVO(SPACER,SPACER,DisplayTypeConstants.String);
			fSpacer.IsDisplayed = false;

			//	Show Product Attributes
			if (m_productWindow)
			{
				MAttribute[] attributes = mas.getMAttributes (false);
				log.fine ("Product Attributes=" + attributes.length);
				for (MAttribute element : attributes)
					fieldVOs.add( getAttributeLine( M_AttributeSetInstance_ID, element, true, !m_productWindow ) );
			}
			else	//	Set Instance Attributes
			{
				FieldVO fNewEdit = null;
				if ( M_AttributeSetInstance_ID == 0)		//	new
					fNewEdit = new FieldVO( NEW_EDIT, Msg.translate( serverCtx, NEW_RECORD ), DisplayTypeConstants.YesNo, true );
				else
					fNewEdit = new FieldVO( NEW_EDIT, Msg.translate( serverCtx, EDIT_RECORD ), DisplayTypeConstants.YesNo, true );
				fNewEdit.DefaultValue = (M_AttributeSetInstance_ID == 0) ? "Y" : "N";
				fieldVOs.add( fNewEdit );

				FieldVO fSelect = new FieldVO( SELECT_EXISTING, Msg.translate( serverCtx, SELECT_EXISTING ), DisplayTypeConstants.Button );
				fieldVOs.add( fSelect );

				MAttribute[] attributes = mas.getMAttributes( true );
				log.fine( "Instance Attributes=" + attributes.length );

				if(attributes.length > 0){
					fieldVOs.add(fSpacer);
					for (MAttribute element : attributes)
						fieldVOs.add( getAttributeLine( M_AttributeSetInstance_ID, element, false, false ) );
					fieldVOs.add(fSpacer);
				}
			}
			
			if( !m_productWindow && mas.isLot() )
			{
				String sql = "SELECT M_Lot_ID, Name "
					+ "FROM M_Lot l "
					+ "WHERE EXISTS (SELECT M_Product_ID FROM M_Product p "
					+ "WHERE p.M_AttributeSet_ID=" + m_masi.getM_AttributeSet_ID()
					+ " AND p.M_Product_ID=l.M_Product_ID)";

				FieldVO fLotNo = new FieldVO( LOT_NO, Msg.translate( serverCtx, LOT_NO ), DisplayTypeConstants.String );
				fLotNo.DefaultValue = m_masi.getLot();
				fieldVOs.add( fLotNo );			

				fLot = new FieldVO( LOT, Msg.translate( serverCtx, LOT ), DisplayTypeConstants.TableDir );
				fLot.listBoxVO = new ListBoxVO( DB.getKeyNamePairs(sql, true), Integer.toString( m_masi.getM_Lot_ID() ) );
				fieldVOs.add( fLot );

				if( m_masi.getMAttributeSet().getM_LotCtl_ID() != 0 )
				{
					MRole defaultRole = MRole.getDefault( serverCtx, false );
					if( defaultRole.isTableAccess( X_M_Lot.Table_ID, false ) && defaultRole.isTableAccess( X_M_LotCtl.Table_ID, false )
							&& !m_masi.isExcludeLot( AD_Column_ID, isSOTrx ) )
					{
						FieldVO fLotButton = new FieldVO( LOT_NEW, Msg.translate( serverCtx, NEW ), DisplayTypeConstants.Button );
						fieldVOs.add( fLotButton );
					}
				}			
			}
			
			if( !m_productWindow && mas.isSerNo() )
			{
				FieldVO fSerNo = new FieldVO( SER_NO, Msg.translate( serverCtx, SER_NO ), DisplayTypeConstants.String );
				fieldVOs.add( fSerNo );

				if (m_masi.getMAttributeSet().getM_SerNoCtl_ID() != 0)
				{
					MRole defaultRole = MRole.getDefault( serverCtx, false );
					if( defaultRole.isTableAccess( X_M_SerNoCtl.Table_ID, false ) 
							&& !m_masi.isExcludeSerNo( AD_Column_ID, isSOTrx ))
					{
						FieldVO fSerNoButton = new FieldVO( SER_NO_NEW, Msg.translate( serverCtx, NEW ), DisplayTypeConstants.Button );
						fieldVOs.add( fSerNoButton );
					}
				}
			}

			//	GuaranteeDate
			if (!m_productWindow && mas.isGuaranteeDate())
			{
				FieldVO fGuarenteeDate = new FieldVO( GUARANTEE_DATE, Msg.translate(serverCtx, GUARANTEE_DATE), DisplayTypeConstants.Date );
				Timestamp guaranteeDate = null;
				if (M_AttributeSetInstance_ID == 0)
					guaranteeDate = m_masi.getGuaranteeDate(true);
				else
					guaranteeDate = m_masi.getGuaranteeDate();
				if( guaranteeDate != null )
					fGuarenteeDate.DefaultValue = Long.toString( guaranteeDate.getTime() );
				fieldVOs.add( fGuarenteeDate );
			}

			FieldVO fDescription = new FieldVO( DESCRIPTION, Msg.translate(serverCtx, DESCRIPTION), DisplayTypeConstants.String );
			fieldVOs.add( fDescription );
			
			c_search = new SearchComponentImpl( fieldVOs.toArray( new FieldVO[]{} ) );		
			components.add( c_search );
			
		}
		else
		{
			FieldVO fError = new FieldVO( ERROR, Msg.translate( serverCtx, ERROR ), DisplayTypeConstants.String );
			fError.DefaultValue = errorMsg;
			fError.IsReadOnly = true;
			c_search = new SearchComponentImpl( new FieldVO[]{ fError } );
			components.add( c_search );  // ZCOM999 - #25922
		}
		
		
	}

	
	private FieldVO getAttributeLine( int M_AttributeSetInstance_ID, MAttribute attribute, boolean product, boolean readOnly )
	{
		log.fine(attribute + ", Product=" + product + ", R/O=" + readOnly);
		//
		MAttributeInstance instance = attribute.getMAttributeInstance (M_AttributeSetInstance_ID);
		if (X_M_Attribute.ATTRIBUTEVALUETYPE_List.equals(attribute.getAttributeValueType()))
		{
			MAttributeValue[] values = attribute.getMAttributeValues();	//	optional = null
			
			ArrayList< NamePair > options = new ArrayList< NamePair >();
			String defaultValue = null;

			for( MAttributeValue value : values )
			{
				if( value != null )
				{
					options.add( value.getKeyNamePair(serverCtx.getContext(LANGUAGE)) );
					if( instance != null && value.getM_AttributeValue_ID() == instance.getM_AttributeValue_ID() )
						defaultValue = value.getKeyNamePair().getID();
				}
				else
				{
					options.add( new KeyNamePair( -1, "" ) );
				}
			}
			
			if( instance == null )
				log.fine( "Attribute=" + attribute.getName() + " #" + values.length + " no instance" );

			if( defaultValue != null )
				log.fine( "Attribute=" + attribute.getName() + " #" + values.length + " - found: " + instance );
			else
				log.warning( "Attribute=" + attribute.getName() + " #" + values.length + " - NOT found: " + instance );
			
			FieldVO fieldVO = new FieldVO( attribute.getName(), attribute.getName(serverCtx.getContext(LANGUAGE)), DisplayTypeConstants.List );
			fieldVO.listBoxVO = new ListBoxVO( options, defaultValue );
			fieldVO.Description = attribute.getDescription();
			fieldVO.IsMandatoryUI = attribute.isMandatory();
			fieldVO.IsReadOnly = readOnly;
			return fieldVO;
		}
		else if (X_M_Attribute.ATTRIBUTEVALUETYPE_Number.equals(attribute.getAttributeValueType()))
		{
			FieldVO fieldVO = new FieldVO( attribute.getName(), attribute.getName(), DisplayTypeConstants.Number );
			fieldVO.Description = attribute.getDescription();
			fieldVO.IsMandatoryUI = attribute.isMandatory();
			fieldVO.IsReadOnly = readOnly;

			if (instance != null)
				fieldVO.DefaultValue = instance.getValueNumber().toString();
			else
				fieldVO.DefaultValue = Env.ZERO.toString();
			return fieldVO;
		}
		else	//	Text Field
		{
			FieldVO fieldVO = new FieldVO( attribute.getName(), attribute.getName(), DisplayTypeConstants.String );
			fieldVO.Description = attribute.getDescription();
			fieldVO.IsMandatoryUI = attribute.isMandatory();
			fieldVO.IsReadOnly = readOnly;

			if (instance != null)
				fieldVO.DefaultValue = instance.getValue();
			return fieldVO;
		}
	}


	@Override
	public ChangeVO processCallback( String sender )
	{
		if( sender.equals( OK ) )
		{
			HashMap< String, String > changedFields = new HashMap< String, String >();
			// must call saveSelection() first because it sets m_masi.M_AttributeSetInstance_ID as a side effect
			if(error)				// ZCOM999 - #25922
				return null;		// ZCOM999 - #25922
			String errors = saveSelection( windowCtx );
			changedFields.put( ATTRIBUTE_SET_INSTANCE, Integer.toString( m_masi.getM_AttributeSetInstance_ID() ) );
			changedFields.put( DESCRIPTION, m_masi.getDescription() );

			ChangeVO changeVO = new ChangeVO();
			changeVO.changedFields = changedFields;
			if( errors != null )
				changeVO.addError( errors );
			return changeVO;
		}
		else if( sender.equals( LOT_NEW ) )
		{
			int M_Product_ID = windowCtx.getAsInt( PRODUCT );
			KeyNamePair pp = m_masi.createLot( M_Product_ID);
			
			HashMap< String, ArrayList< NamePair > > changedDropdowns = new HashMap< String, ArrayList<NamePair> >();
			fLot.listBoxVO.getOptions().add( pp );
			
			changedDropdowns.put( LOT, fLot.listBoxVO.getOptions() );
			
			ChangeVO changeVO = new ChangeVO();
			changeVO.changedDropDowns = changedDropdowns;
			
			HashMap< String, String > changedFields = new HashMap< String, String >();
			changedFields.put( LOT, pp.getID() );

			if (pp.getKey() != -1)
			{
				changedFields.put( LOT_NO, pp.getName() );
				m_masi.setM_Lot_ID(pp.getKey());
			}
			else
			{
				m_masi.setM_Lot_ID(0);
			}

			changeVO.changedFields = changedFields;
			
			return changeVO;
		}
		else if( sender.equals( LOT ) )
		{
			ChangeVO changeVO = new ChangeVO();
			
			HashMap< String, String > changedFields = new HashMap< String, String >();
			String key = windowCtx.get( LOT );
			KeyNamePair pp = (KeyNamePair) fLot.listBoxVO.getOption( key ); 

			if (pp != null && pp.getKey() != -1)
			{
				changedFields.put( LOT_NO, pp.getName() );
				m_masi.setM_Lot_ID( pp.getKey() );
			}
			else
			{
				m_masi.setM_Lot_ID(0);
			}
			
			changeVO.changedFields = changedFields;
			return changeVO;
		}
		else if( sender.equals( SER_NO_NEW ) )
		{

			HashMap< String, String > changedFields = new HashMap< String, String >();
			changedFields.put( SER_NO, m_masi.getSerNo(true) );

			ChangeVO changeVO = new ChangeVO();
			changeVO.changedFields = changedFields;
			
			return changeVO;
		}
		else 
		{
			return null;
		}
	}
	
	
	/**
	 *	Save Selection.  Has the side effect of setting m_M_AttributeSetInstance_ID 
	 *	@return null if success
	 */
	private String saveSelection( WindowCtx windowCtx )
	{
		log.info("");
		MAttributeSet as = m_masi.getMAttributeSet();
		if (as == null)
			return null;
		//
		boolean m_changed = false;
		int m_M_AttributeSetInstance_ID = windowCtx.getAsInt( ATTRIBUTE_SET_INSTANCE );
		String mandatory = "";
		if (!m_productWindow && as.isLot())
		{
			String text = windowCtx.get( LOT_NO );  
			log.fine("Lot=" + text);
			m_masi.setLot (text);
			
			String key = windowCtx.get( LOT );
			KeyNamePair pp = (KeyNamePair) fLot.listBoxVO.getOption( key ); 

			if (pp != null && pp.getKey() != -1)
			{
				m_masi.setM_Lot_ID( pp.getKey() );
			}
			else
			{
				m_masi.setM_Lot_ID(0);
			}
			
			if (as.isLotMandatory() && (text == null || text.length() == 0))
				mandatory += " - " + Msg.translate(serverCtx, "Lot");
			m_changed = true;
		}	//	Lot
		if (!m_productWindow && as.isSerNo())
		{
			String text = windowCtx.get( SER_NO );
			log.fine("SerNo=" + text);
			m_masi.setSerNo(text);
			if (as.isSerNoMandatory() && (text == null || text.length() == 0))
				mandatory += " - " + Msg.translate(serverCtx, "SerNo");
			m_changed = true;
		}	//	SerNo
		if (!m_productWindow && as.isGuaranteeDate())
		{
			String time = windowCtx.get( GUARANTEE_DATE );
			Timestamp ts = null;
			try { ts = new Timestamp( Long.parseLong( time ) ); } catch (Exception e) { ts = null; }
			log.fine("GuaranteeDate=" + ts);
			m_masi.setGuaranteeDate(ts);
			if (as.isGuaranteeDateMandatory() && ts == null)
				mandatory += " - " + Msg.translate(serverCtx, "GuaranteeDate");
			m_changed = true;
		}	//	GuaranteeDate

		//	***	Save Attributes ***
		//	New Instance
		if (m_changed || m_masi.getM_AttributeSetInstance_ID() == 0)
		{
			m_masi.save ();
			m_M_AttributeSetInstance_ID = m_masi.getM_AttributeSetInstance_ID ();
			m_masi.getDescription();
		}

		//	Save Instance Attributes
		MAttribute[] attributes = as.getMAttributes(!m_productWindow);
		for (MAttribute element : attributes) {
			if( X_M_Attribute.ATTRIBUTEVALUETYPE_List.equals( element.getAttributeValueType() ) )
			{
				BigDecimal key = null;
				try{ key = new BigDecimal( windowCtx.get( element.getName() ) ); } catch (Exception e) { key = null; }
				log.fine(element.getName() + "=" + key);
				if (element.isMandatory() && key == null)
					mandatory += " - " + element.getName();
				
				MAttributeValue[] values = element.getMAttributeValues();	//	optional = null

				MAttributeValue value = null;
				for( int j = 0; j < values.length; ++j )
				{
					if( values[j] != null && key != null && values[j].getKeyNamePair().getKey() == key.intValue() )
					{
						value = values[j];
						break;
					}
				}
				
				element.setMAttributeInstance(m_M_AttributeSetInstance_ID, value );
			}
			else if( X_M_Attribute.ATTRIBUTEVALUETYPE_Number.equals( element.getAttributeValueType() ) )
			{
				BigDecimal value = null;
				try{ value = new BigDecimal( windowCtx.get( element.getName() ) ); } catch (Exception e) { value = null; }
				log.fine(element.getName() + "=" + value);
				if (element.isMandatory() && value == null)
					mandatory += " - " + element.getName();
				element.setMAttributeInstance(m_M_AttributeSetInstance_ID, value);
			}
			else
			{
				String value = windowCtx.get( element.getName() );
				log.fine(element.getName() + "=" + value);
				if (element.isMandatory() && (value == null || value.length() == 0))
					mandatory += " - " + element.getName();
				if(value == null || value.length() == 0){
                    value = " ";
				}
				element.setMAttributeInstance(m_M_AttributeSetInstance_ID, value);
			}
			m_changed = true;
		}	//	for all attributes
		
		//	Save Model
		if (m_changed)
		{
			m_masi.setDescription ();
			m_masi.save ();
		}
		//
		if (mandatory.length() > 0)
		{
			return mandatory;
		}
		return null;
	}	//	saveSelection


	@Override
	public final ArrayList<ComponentImplIntf> getComponents() {
		return components;
	}
}
