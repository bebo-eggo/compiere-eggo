package com.audaxis.compiere.jasperreport;

import java.io.File;
import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JRExporterParameter;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.export.JRXlsAbstractExporterParameter;
import net.sf.jasperreports.engine.export.JRXlsExporter;
import net.sf.jasperreports.engine.export.JRXlsExporterParameter;

public class XlsExporter {

	// For compatibility reason
	public void exportReport(JasperPrint jasperPrint, File file) 
	throws JRException {
		exportReport(jasperPrint, file, null, null);
	}
	// Export
	public void exportReport(JasperPrint jasperPrint, File file, Map<String, Object> properties, final List<String> bands) 
	throws JRException {
        JRXlsExporter exporter = new JRXlsExporter();
    	//JExcelApiExporter exporter = new JExcelApiExporter();
        
        Map<String, String> numberFormats = new HashMap<String, String>();
        numberFormats.put("####0.00", "0,00");
        numberFormats.put("####0,00", "0,00");
        numberFormats.put("#,###0.00", "0,00");
        numberFormats.put("#.###0,00", "0,00");
        numberFormats.put("###0.00;-###0.00", "0,00");
        numberFormats.put("#,##0.00;-#,##0.00", "0,00");
        exporter.setParameter(JRXlsExporterParameter.FORMAT_PATTERNS_MAP, numberFormats);
        exporter.setParameter(JRExporterParameter.OUTPUT_FILE_NAME, file.getAbsolutePath());
        exporter.setParameter(JRExporterParameter.JASPER_PRINT, jasperPrint);
        exporter.setParameter(JRXlsExporterParameter.IS_DETECT_CELL_TYPE, Boolean.TRUE);
        
        exporter.setParameter(JRXlsExporterParameter.IS_ONE_PAGE_PER_SHEET, Boolean.FALSE);
        exporter.setParameter(JRXlsExporterParameter.IS_REMOVE_EMPTY_SPACE_BETWEEN_ROWS, Boolean.TRUE);
        exporter.setParameter(JRXlsExporterParameter.IS_WHITE_PAGE_BACKGROUND, Boolean.FALSE);
        exporter.setParameter(JRXlsExporterParameter.IGNORE_PAGE_MARGINS, Boolean.TRUE);

        exporter.setParameter(JRXlsAbstractExporterParameter.IS_REMOVE_EMPTY_SPACE_BETWEEN_COLUMNS, Boolean.TRUE);
        exporter.setParameter(JRXlsAbstractExporterParameter.IS_REMOVE_EMPTY_SPACE_BETWEEN_ROWS, Boolean.TRUE);
        exporter.setParameter(JRXlsAbstractExporterParameter.IS_WHITE_PAGE_BACKGROUND, Boolean.TRUE);
        exporter.setParameter(JRXlsAbstractExporterParameter.IS_IGNORE_CELL_BACKGROUND, Boolean.TRUE);
        exporter.setParameter(JRXlsAbstractExporterParameter.IS_IGNORE_CELL_BORDER, Boolean.TRUE);
        exporter.setParameter(JRXlsAbstractExporterParameter.IS_IGNORE_GRAPHICS, Boolean.TRUE);
        exporter.setParameter(JRXlsAbstractExporterParameter.IS_COLLAPSE_ROW_SPAN, Boolean.TRUE);
        exporter.setParameter(JRXlsAbstractExporterParameter.IS_ONE_PAGE_PER_SHEET, Boolean.TRUE); // permet de vite voir si les parametres fonctionnent
        exporter.setParameter(JRXlsAbstractExporterParameter.IS_FONT_SIZE_FIX_ENABLED, Boolean.TRUE);
        exporter.setParameter(JRXlsAbstractExporterParameter.IS_DETECT_CELL_TYPE, Boolean.TRUE);
        exporter.setParameter(JRXlsAbstractExporterParameter.FORMAT_PATTERNS_MAP, numberFormats);

        if (properties != null)
        {
        	for (Map.Entry<String, Object> property : properties.entrySet())
        	{
        		Field f;
				try {
					f = JRXlsAbstractExporterParameter.class.getDeclaredField(property.getKey());
	            	exporter.setParameter((JRXlsAbstractExporterParameter)f.get(null), property.getValue());
				} catch (Exception e) 
				{
					// do nothing
				}
				try {
	        		f = JRXlsExporterParameter.class.getDeclaredField(property.getKey());
	            	exporter.setParameter((JRXlsAbstractExporterParameter)f.get(null), property.getValue());
				} catch (Exception e) 
				{
					// do nothing
				}
        	}
        }

        XlsFilter xlsFilter = new XlsFilter(bands);
        exporter.setParameter(JRExporterParameter.FILTER, xlsFilter);
        		
        exporter.exportReport();		
	}

}
