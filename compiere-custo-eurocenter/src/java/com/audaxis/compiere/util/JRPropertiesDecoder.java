package com.audaxis.compiere.util;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class JRPropertiesDecoder {

	private String properties = null;
	private HashMap<String, Object> map = new HashMap<String, Object>();
	private ArrayList<String> al = new ArrayList<String>();

	public JRPropertiesDecoder(String properties) 
	{
		this.properties = properties;
		
		if (properties != null)
		{
			String [] props = properties.split(";");
			if (props!=null)
			{
				for (String prop : props)
				{
					if (prop != null && prop.startsWith("P:"))
					{
						String [] values = prop.substring(2, prop.length()).split("=");
						if (values.length == 2)
						{
							map.put(values[0], "Y".equalsIgnoreCase(values[1]));
						}
					}
					else if (prop != null && prop.startsWith("B:") && prop.length()>2)
					{
						al.add(prop.substring(2,prop.length()));
					}
					
				}
			}
				
		}
	}

	public Map<String, Object> getProperties()
	{
		return map;
	}

	public List<String> getFilters()
	{
		return al;
	}
	
	
	public static void main (String ... args)
	{
		String [] lines = {null, "", ";", ";;", "XXXX", "P:", "B:", "P:B:", "P:AAAAA", "P:AAA=AAA", "P:AAA=AAA;", "P:AAA=AAA;P:BBB=BBB;B:HEADER;", "P:AAA=AAA;P:BBB=BBB;B:HEADER;C:DETAIL"};

		for (String line : lines)
		{
			JRPropertiesDecoder dec = new JRPropertiesDecoder(line);
			System.out.println("LINE=" + line);
			System.out.println("PROPERTIES:");
			for (Map.Entry<String, Object> entry : dec.getProperties().entrySet())
			{
				System.out.println("  => KEY  : " + entry.getKey());
				System.out.println("  => VALUE: " + entry.getValue());
			}
			System.out.println("BANDS:");
			for (String s : dec.getFilters())
			{
				System.out.println("  => BAND : " + s);
			}
			System.out.println("----------------------------------------------------------------------------");
			
		}
	
	}
	
}
