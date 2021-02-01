package com.audaxis.compiere.eurocenter.util;

import java.io.File;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.Locale;
import java.util.regex.Pattern;

import javax.swing.JFileChooser;

import org.compiere.util.CLogger;
import org.compiere.util.CPreparedStatement;
import org.compiere.util.DB;
import org.compiere.util.Env;

import com.audaxis.compiere.db.Util;
import com.audaxis.compiere.eurocenter.interfaces.FilterResultSet;
import com.audaxis.compiere.eurocenter.interfaces.TransformerFieldName;
import com.audaxis.compiere.eurocenter.interfaces.TransformerObject;


/**
 * @author Steven
 * @author vca
 * 
 * 
 * Une requête sql est tout type de requête acceptée par Oracle
 * Paramètres :
 * 		Type : 	String ==> guillemet (ex: 'bla bla bla', '20060501')
 * 				Numérique ==> pas de guillemet (ex: 10 , 0 ,  18.87 ) 
 * 
 * 		à chaque paramètre doit correspondre un "?" dans le query sql.
 *
 * 
 * Easy use case :
 * 
 * FlatFileHelper ffh = new FlatFileHelper("myFileName", null);
 * File f = ffh.writeFile("SELECT * FROM M_Product WHERE M_Product_ID=?", 1000000);
 * 
 */
public class FlatFileHelper 
{
	
	
	private static CLogger log = CLogger.getCLogger(FlatFileHelper.class);
	private static final Pattern DECIMAL_PAT=Pattern.compile("[+-]?\\d*(\\.\\d*)([eE]\\d+)?");

	public final static String PIPE_DELIMITER = "|";
	public final static String COMMA_DELIMITER = ",";
	public final static String SEMICOLUMN_DELIMITER = ";";
	
	public final static String NEW_LINE = Env.NL;
	
	private String filename;
	private String suffix;
	private String delimiter=PIPE_DELIMITER;
	private String lineDelimiter=NEW_LINE;
	private boolean withHeader=true;

	private String preText=null;
	private String postText=null;

	private FilterResultSet filterResultSet=null;
	private TransformerFieldName transformerFieldName=null;
	private TransformerObject transformerObject=null;
	private String encoding=null;		// a charset name
	private boolean isFormatData=true;
	
	/**
	 * Empty Constructor, if no filename is explicitely given (with setFileName("XXX")), a dialog box will prompt the user 
	 * to enter the user
	 */
	public FlatFileHelper() 
	{
	}
	
	/**
	 * Easy constructor with filename (usefull for batch purpose => no prompt) 
	 * @param filename 	The name of the file (null value will cause the prompt of a dialog box)
	 * @param suffix	A suffix to the filename
	 */
	public FlatFileHelper(String filename,String suffix) 
	{
		this.filename=filename;
		this.suffix=suffix;
	}
	
	/**
	 *	Set the filename 
	 * @param filename
	 */
	public void setFilename(String filename) 
	{
		this.filename=filename;
	}
	
	/**
	 * Set a suffix
	 * @param suffix
	 */
	public void setSuffix(String suffix)  
	{
		this.suffix=suffix;
	}
	
	/**
	 * Set the column delimiter (default is | )
	 * @see  FlatFileHelper.PIPE_DELIMITER
	 * @see  FlatFileHelper.COMMA_DELIMITER
	 * @see  FlatFileHelper.SEMICOLUMN_DELIMITER
	 * 
	 * @param delimiter
	 */
	public void setDelimiter(String delimiter) 
	{
		this.delimiter=delimiter;
	}
	
	/**
	 * Set the line delimiter (default is Env.NL )
	 * @see  FlatFileHelper.NEW_LINE
	 * 
	 * @param lineDelimiter
	 */
	public void setLineDelimiter(String lineDelimiter) 
	{
		this.lineDelimiter=lineDelimiter;
	}
	
	/**
	 * Print Column Header ? (default yes)
	 * @param withHeader
	 */
	public void setWithHeader(boolean withHeader) 
	{
		this.withHeader=withHeader;
	}
	
	/**
	 * Allow to add some text before the result of the query
	 * @param preText
	 */
	public void setPreText(String preText) 
	{ 
		this.preText=preText; 
	}
	/**
	 * Allow to add some text at the end of the file
	 * @param preText
	 */
	public void setPostText(String postText) 
	{ 
		this.postText=postText; 
	}

	/**
	 * Set specific Charset for file encoding
	 * 
	 * @param encoding
	 */
	public void setEncoding(String encoding) 
	{ 
		this.encoding=encoding; 
	}
	
	/**
	 * Setup a filter, than will receive a <tt>ResultSet</tt>, and return true if the record is to be taken.
	 * @param filter
	 */
	public void setFilterResultSet(FilterResultSet filterResultSet)
	{
		this.filterResultSet=filterResultSet;
	}
	/**
	 * Setup a filter for fields. Takes the field name as argument. Return 'null' for default behaviour, or a new field name if wished. Return
	 * an empty string to suppress the field. This shoud return a String.
	 * @param filterField
	 */
	public void setTransformerFieldNameFieldName(TransformerFieldName transformerFieldName) 
	{
		this.transformerFieldName=transformerFieldName;
	}
	
	/**
	 * Setup a transformer for fields value
	 * @param transformerObject
	 */
	public void setTransformerObject(TransformerObject transformerObject) 
	{
		this.transformerObject=transformerObject;
	}
	
	/**
	 * Create and write a file based on a ResultSet.
	 * ResultSet should be closed where it's called
	 * 
	 * @param rs
	 * @return
	 * @throws IOException
	 * @throws SQLException
	 */
	public File writeFile(ResultSet rs) throws IOException, SQLException 
	{
		File f = createFile();
		return writeFile(f, rs);
	}
	
	/**
	 * 
	 * Create and write a file based on a sql clause and a list of params
	 * 
	 * @param sql 		The query 
	 * @param params	The params 
	 * @return
	 * @throws IOException
	 * @throws SQLException
	 */
	public File writeFile(String sql, ArrayList<String> params) throws IOException, SQLException 
	{
		File f = createFile();
		PreparedStatement ps = null;
		ResultSet rs=null;
		try {
			log.config(sql);
			ps = DB.prepareStatement(sql,null);
			if (params != null) 
			{
				for(int k=0;k<params.size();k++) 
				{
					String s = params.get(k);
					if (s == null)
						ps.setObject(k+1, null);
					else 
					{
						s=s.trim();
						if (s.startsWith("'")) 
							ps.setString(k+1,s.substring(1,s.length()-1));  // remove '...'
						else if (DECIMAL_PAT.matcher(s).matches())
							ps.setBigDecimal(k+1, new BigDecimal(s));
						else 
							ps.setInt(k+1, Integer.parseInt(s));
					}
				}
			}
			rs = ps.executeQuery();
		
			if(isFormatData)
				f = writeFile(f, rs);
			else
				f = writeFileWOFormat(f, rs);	
		} finally {
			Util.closeCursor(ps, rs);
		}
		return f;
	}

	
	/**
	 * Create file based on filename
	 * if filename is null, a dialog box allow user to select/create a new File
	 *
	 * @return a file File
	 * @throws IOException (if cannot create file
	 */
	private File createFile() throws IOException 
	{
		File f = null;
		if (filename == null || filename.length() == 0) {
			/**  Get Export File Info **/
			JFileChooser fc = new JFileChooser();
			fc.setDialogTitle("Open");
			fc.setFileSelectionMode(JFileChooser.FILES_ONLY);
			fc.setMultiSelectionEnabled(false);
			filename = "TEST";
			if (suffix != null) filename+= "-" + suffix;
			filename+=".txt";
			fc.setSelectedFile(new File(filename));
			if (fc.showSaveDialog(null) == JFileChooser.APPROVE_OPTION) {
				f = fc.getSelectedFile();
				if (f != null && f.isDirectory()) f = null;
				if (f != null && f.exists()) f.delete();
			}
			if (f==null) throw new IOException("Impossible to create the file");
		}
		else {
			f = new File(filename);
		}
		return f;
	}
	
	/** File Writer */
	
	private File writeFile(File f, ResultSet rs) throws IOException, SQLException 
	{
		Writer fw = null;
		
		try 
		{
			// l'écrivain
			if (encoding!=null) 
			{
				log.config("Outputing to "+f+" in encoding "+encoding);
				fw = new OutputStreamWriter(new FileOutputStream(f),encoding);
			} else {
				fw = new FileWriter(f);
			}
			
			if (preText!=null) 
			{
				fw.write(preText);
				fw.flush();
			}
			
			ResultSetMetaData rsmd = null;
			String[] fieldNames=null;

			// Ecriture du titre
			rsmd = rs.getMetaData();
			fieldNames = new String[rsmd.getColumnCount()];
			for(int i=1;i<=rsmd.getColumnCount();i++)
			{
				String fn=null;
				if (transformerFieldName!=null) fn=transformerFieldName.transform(rsmd.getColumnLabel(i));
				if (fn==null) fn=rsmd.getColumnLabel(i);
				if ("".equals(fn)) { fieldNames[i-1]=null; continue; };
				fieldNames[i-1]=fn;
				if (withHeader) 
				{
					fw.write(fn);
					if (i<rsmd.getColumnCount()) fw.write(delimiter);
				}
			}
			if (withHeader) 
			{
				fw.write(lineDelimiter);
				fw.flush();
			}
			
			NumberFormat stupidExcellDeMerdeFormatter = NumberFormat.getInstance(Locale.FRENCH);
			stupidExcellDeMerdeFormatter.setGroupingUsed(false);
			
			// Ecriture des données
			while (rs.next()) 
			{
				if (filterResultSet != null && !filterResultSet.filter(rs)) continue;
				for(int i=1,cc=rsmd.getColumnCount();i<=cc;i++) 
				{
					if (fieldNames[i-1]==null) continue;
					Object o = rs.getObject(i);
					if (transformerObject!=null) o=transformerObject.transform(rsmd.getColumnLabel(i),o);
					if (o!=null) 
					{
						if (o instanceof Number)
							fw.write(stupidExcellDeMerdeFormatter.format(o));
						else 
							fw.write(""+o);
					}
					if (i<cc) fw.write(delimiter);
				}
				fw.write(lineDelimiter);
				fw.flush();
			}
			
			if (postText!=null) 
			{
				fw.write(postText);
				fw.flush();
			}
		} catch (IOException e) {
			if (f != null && f.exists()) try {f.delete();}  catch (SecurityException se) {} finally {f = null;} 
			throw e;
		} catch (SQLException e) {
			if (f != null && f.exists()) try {f.delete();}  catch (SecurityException se) {} finally {f = null;} 
			throw e;
		} finally {
			if (fw != null) try {fw.close();} catch(IOException ioe){} finally {fw=null;}			
		}
		f.setExecutable(true, false);
		f.setReadable(true, false);
		f.setExecutable(true, false);
		return f;
	}
	
	
	/** File Writer */
	
	private File writeFileWOFormat(File f, ResultSet rs) throws IOException, SQLException 
	{
		Writer fw = null;
		
		try 
		{
			// l'écrivain
			if (encoding!=null) 
			{
				log.config("Outputing to "+f+" in encoding "+encoding);
				fw = new OutputStreamWriter(new FileOutputStream(f),encoding);
			} else {
				fw = new FileWriter(f);
			}
			
			if (preText!=null) 
			{
				fw.write(preText);
				fw.flush();
			}
			
			ResultSetMetaData rsmd = null;
			String[] fieldNames=null;

			// Ecriture du titre
			rsmd = rs.getMetaData();
			fieldNames = new String[rsmd.getColumnCount()];
			for(int i=1;i<=rsmd.getColumnCount();i++)
			{
				String fn=null;
				if (transformerFieldName!=null) fn=transformerFieldName.transform(rsmd.getColumnLabel(i));
				if (fn==null) fn=rsmd.getColumnLabel(i);
				if ("".equals(fn)) { fieldNames[i-1]=null; continue; };
				fieldNames[i-1]=fn;
				if (withHeader) 
				{
					fw.write(fn);
					if (i<rsmd.getColumnCount()) fw.write(delimiter);
				}
			}
			if (withHeader) 
			{
				fw.write(lineDelimiter);
				fw.flush();
			}
			
			NumberFormat stupidExcellDeMerdeFormatter = NumberFormat.getInstance(Locale.FRENCH);
			stupidExcellDeMerdeFormatter.setGroupingUsed(false);
			
			// Ecriture des données
			while (rs.next()) 
			{
				if (filterResultSet != null && !filterResultSet.filter(rs)) continue;
				for(int i=1,cc=rsmd.getColumnCount();i<=cc;i++) 
				{
					if (fieldNames[i-1]==null) continue;
					Object o = rs.getObject(i);
					if (transformerObject!=null) o=transformerObject.transform(rsmd.getColumnLabel(i),o);
					if (o!=null) 
					{
//						if (o instanceof Number)
//							fw.write(stupidExcellDeMerdeFormatter.format(o));
//						else 
							fw.write(""+o);
					}
					if (i<cc) fw.write(delimiter);
				}
				fw.write(lineDelimiter);
				fw.flush();
			}
			
			if (postText!=null) 
			{
				fw.write(postText);
				fw.flush();
			}
		} catch (IOException e) {
			if (f != null && f.exists()) try {f.delete();}  catch (SecurityException se) {} finally {f = null;} 
			throw e;
		} catch (SQLException e) {
			if (f != null && f.exists()) try {f.delete();}  catch (SecurityException se) {} finally {f = null;} 
			throw e;
		} finally {
			if (fw != null) try {fw.close();} catch(IOException ioe){} finally {fw=null;}			
		}
		f.setExecutable(true, false);
		f.setReadable(true, false);
		f.setExecutable(true, false);
		return f;
	}
	
	
	/**
	 * Set Parameters and execute query
	 * 
	 * @deprecated cause connecion closed in 3.3
	 * 
	 * @param sql
	 * @param params
	 * @return
	 * @throws SQLException
	 */
	private static ResultSet executeQuery(String sql, ArrayList<String> params) throws SQLException 
	{

		CPreparedStatement ps = null;
		ResultSet rs = null;
		
		try 
		{
			log.config(sql);
			ps = DB.prepareStatement(sql,null);
			if (params != null) 
			{
				for(int k=0;k<params.size();k++) 
				{
					String s = params.get(k);
					if (s == null)
						ps.setObject(k+1, null);
					else 
					{
						s=s.trim();
						if (s.startsWith("'")) 
							ps.setString(k+1,s.substring(1,s.length()-1));  // remove '...'
						else if (DECIMAL_PAT.matcher(s).matches())
							ps.setBigDecimal(k+1, new BigDecimal(s));
						else 
							ps.setInt(k+1, Integer.parseInt(s));
					}
				}
			}
			rs = ps.executeQuery();
		} catch(SQLException e) {
			Util.closeCursor(ps, rs);
			throw e;
		}
		
		return rs;
	}

	public void setIsFormatData(boolean isFormatData) {
		this.isFormatData=isFormatData;
		
	}
}
