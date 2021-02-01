package com.audaxis.compiere.jasperreport;

import java.util.ArrayList;
import java.util.List;

import net.sf.jasperreports.engine.JRPrintElement;
import net.sf.jasperreports.engine.export.ExporterFilter;
import net.sf.jasperreports.engine.type.BandTypeEnum;

/**
 * Classe utilisée pour filtrer les données au moment d'un export XLS depuis JasperReport.<p>
 * Une autre manière de faire est d'utiliser des propriétés mais on devient vite dépendant de chaque rapport.
 * 
 * @author vha
 *
 */
public class XlsFilter implements ExporterFilter {

	List<String> bands = null;


	public XlsFilter(List<String> bands) 
	{

		if (bands == null)
			bands = new ArrayList<String>();

		// For Compatibiliy reason
		if (bands.size() == 0)
		{
			bands.add("COLUMN_HEADER");
			bands.add("DETAIL");
		}
		
		this.bands = bands;
	}

	@Override
	public boolean isToExport(JRPrintElement pe) {
		if (pe.getOrigin() == null)
			return true;

		for (String band : bands)
		{
			if (band == null)
				continue;

			if (band.endsWith("_HEADER"))
			{
				String group = band.substring(0, band.length()-7);
				if (group.equalsIgnoreCase(pe.getOrigin().getGroupName())
						&& pe.getOrigin().getBandTypeValue() == BandTypeEnum.GROUP_HEADER)
					return true;
			}
			else if (band.endsWith("_FOOTER"))
			{
				String group = band.substring(0, band.length()-7);
				if (group.equalsIgnoreCase(pe.getOrigin().getGroupName())
						&& pe.getOrigin().getBandTypeValue() == BandTypeEnum.GROUP_FOOTER)
					return true;
			}
			else if (band.equalsIgnoreCase(pe.getOrigin().getGroupName()))
			{
				return true;
			}
		
			
			BandTypeEnum bte = null;
			try {bte = BandTypeEnum.valueOf(band);} catch(Exception e) {}
			if (bte != null && pe.getOrigin().getBandTypeValue() == bte)
				return true;
		}

		return false;
	}

}
