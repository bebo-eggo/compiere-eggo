/** REDMINE 22250**/
package com.audaxis.compiere.process;

import java.io.BufferedReader;
import java.io.FileReader;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.TreeMap;
import java.util.logging.Level;

import org.compiere.framework.PO;
import org.compiere.impexp.ImpFormat;
import org.compiere.model.X_I_Coda;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.DB;
import org.compiere.util.Msg;
import org.compiere.util.QueryUtil;

public class ImportCoda extends SvrProcess {

	private String p_FileName;
	private int p_AD_Client_ID;
	private int p_AD_Org_ID;
	private int m_AD_User_ID;
	private TreeMap<String, ImpFormat> m_Formats = new TreeMap<String, ImpFormat>();
	private ArrayList<BankStatement> m_BankStatements = new ArrayList<BankStatement>();
	private int no = 0;
	// the range of the Sequence and Detail can change
	private int m_SequenceStartNO = -1, m_SequenceEndNO = -1;
	private int m_DetailStartNO = -1, m_DetailEndNO = -1;
	private boolean m_deleteOldImported;
	private static final String STD_CLIENT_CHECK = " AND AD_Client_ID=? ";
	
	private int p_BankAccount_ID;

	private enum Subdivision {
		HEADER, TRANSACTION, SUMMARY
	}

	@Override
	protected void prepare() {
		m_AD_User_ID = getCtx().getAD_User_ID();
		ProcessInfoParameter[] para = getParameter();
		for (ProcessInfoParameter element : para) {
			String name = element.getParameterName();
			if (element.getParameter() == null)
				;
			else if (name.equals("FileName"))
				p_FileName = (String) element.getParameter();
			else if (name.equals("AD_Client_ID"))
				p_AD_Client_ID = element.getParameterAsInt();
			else if (name.equals("AD_Org_ID"))
				p_AD_Org_ID = element.getParameterAsInt();
			else if (name.equals("C_BankAccount_ID"))
				p_BankAccount_ID = element.getParameterAsInt();
			else if (name.equals("DeleteOldImported"))
				m_deleteOldImported = "Y".equals(element.getParameter());
			else
				log.log(Level.SEVERE, "Unknown Parameter: " + name);
		}
	}

	@Override
	protected String doIt() throws Exception {

		if(p_AD_Client_ID == 0)
			return "Erreur, société non connue";
		if(p_BankAccount_ID == 0)
			return "Banque inconnue";

		deleteOldImported();
		loadFormats();
		loadFile();
		insertCoda();
		updateCoda();

		return Msg.translate(getCtx(), "ProcessOK");
	}

	private void deleteOldImported() {

		if (m_deleteOldImported) {
			String sql = "DELETE FROM I_Coda WHERE I_IsImported='Y' AND C_BankAccount_ID = "+p_BankAccount_ID+ STD_CLIENT_CHECK;
			int no = DB.executeUpdate(get_Trx(), sql, p_AD_Client_ID);
			addLog("@NoOfLines@ @Deleted@ = " + no);
		}
	}

	private void loadFormats() {

		String sql = "SELECT name FROM AD_ImpFormat WHERE name LIKE ? ";
		Object[][] results = QueryUtil.executeQuery(get_Trx(), sql,	"CODA_%");
		for (Object[] row : results) {
			String name = (String) row[0];
			String key = name.substring(name.lastIndexOf('_') + 1,
					name.length());
			m_Formats.put(key, ImpFormat.load(name));
		}
	}

	private void loadFile() throws Exception {

		ArrayList<String> headerFields = new ArrayList<String>();
		ArrayList<String> transactionFields = new ArrayList<String>();
		ArrayList<String> summaryFields = new ArrayList<String>();
		LinkedHashMap<String, ArrayList<String>> transactions = new LinkedHashMap<String, ArrayList<String>>();
		LinkedHashSet<String> sequences = new LinkedHashSet<String>();
		String sequence, detail;
		BufferedReader br = new BufferedReader(new FileReader(p_FileName));
		Iterator<String> iterKey;
		String line;
		while ((line = br.readLine()) != null) {
			// iterate all Formats -> key length is unknown
			iterKey = m_Formats.keySet().iterator();
			inner: while (iterKey.hasNext()) {
				String key = iterKey.next();
				if (line.startsWith(key.toString())) {
					ImpFormat format = m_Formats.get(key);
					String[] fields = format.parseLine(line, true, true, false);
					switch (getSubdivision(format)) {
					case HEADER:
						Collections.addAll(headerFields, fields);
						break inner;
					case TRANSACTION: {
						if (m_DetailStartNO < 0 && m_DetailEndNO < 0)
							getDetailRange(format.getName());
						detail = line.substring(m_DetailStartNO - 1,
								m_DetailEndNO);
						if (!detail.equals("0000") && !key.equals("31")
								&& !key.equals("32"))
							break inner;
						if (m_SequenceStartNO < 0 && m_SequenceEndNO < 0)
							getSequanceRange(format.getName());
						sequence = line.substring(m_SequenceStartNO - 1,
								m_SequenceEndNO);
						if (sequences.add(sequence))
							transactionFields = new ArrayList<String>();
						Collections.addAll(transactionFields, fields);
						transactions.put(sequence, transactionFields);
					}
						break inner;
					case SUMMARY: {
						Collections.addAll(summaryFields, fields);
						if (!iterKey.hasNext()) {
							BankStatement bankStatement = new BankStatement(
									headerFields, transactions, summaryFields);
							m_BankStatements.add(bankStatement);
							headerFields = new ArrayList<String>();
							sequences = new LinkedHashSet<String>();
							transactionFields = new ArrayList<String>();
							summaryFields = new ArrayList<String>();
							transactions = new LinkedHashMap<String, ArrayList<String>>();
						}
					}
						break inner;
					}
				}
			}
		}
		br.close();
	}

	private void getDetailRange(String format) {

		String sql = "SELECT Startno,Endno FROM AD_ImpFormat_Row WHERE UPPER(Name) LIKE UPPER('Detail') AND Ad_Impformat_Id = (SELECT Ad_Impformat_Id FROM Ad_Impformat WHERE Name like ? )";
		Object[][] results = QueryUtil.executeQuery(get_Trx(), sql,
				format);
		for (Object[] row : results) {
			m_DetailStartNO = ((BigDecimal) row[0]).intValue();
			m_DetailEndNO = ((BigDecimal) row[1]).intValue();
		}
	}

	private void getSequanceRange(String format) {

		String sql = "SELECT Startno,Endno FROM AD_ImpFormat_Row WHERE UPPER(Name) LIKE UPPER('Sequence') AND Ad_Impformat_Id = (SELECT Ad_Impformat_Id FROM Ad_Impformat WHERE Name like ? )";
		Object[][] results = QueryUtil.executeQuery(get_Trx(), sql,
				format);
		for (Object[] row : results) {
			m_SequenceStartNO = ((BigDecimal) row[0]).intValue();
			m_SequenceEndNO = ((BigDecimal) row[1]).intValue();
		}
	}

	private Subdivision getSubdivision(ImpFormat format) {

		String name = format.getName();
		String sub = name.substring(name.indexOf('_') + 1,
				name.lastIndexOf('_'));
		return Subdivision.valueOf(sub);
	}

	private void insertCoda() {

		ArrayList<String> headerData = new ArrayList<String>();
		LinkedHashMap<String, ArrayList<String>> transactions = new LinkedHashMap<String, ArrayList<String>>();
		ArrayList<String> summaryData = new ArrayList<String>();
		Iterator<String> iterKey;
		for (BankStatement statement : m_BankStatements) {
			headerData = new ArrayList<String>(statement.getHeaderFields());
			transactions = new LinkedHashMap<String, ArrayList<String>>(
					statement.getTransactions());
			summaryData = new ArrayList<String>(statement.getSummaryFields());
			iterKey = transactions.keySet().iterator();
			while (iterKey.hasNext()) {
				ArrayList<String> elements = new ArrayList<String>();
				ArrayList<String> columnNames = new ArrayList<String>();
				ArrayList<String> values = new ArrayList<String>();
				columnNames.add("AD_Client_ID");
				columnNames.add("AD_Org_ID");
				columnNames.add("Updated");
				columnNames.add("Created");
				columnNames.add("UpdatedBy");
				columnNames.add("CreatedBy");
				columnNames.add("I_Coda_ID");
				columnNames.add("AD_PInstance_ID");
				values.add("" + p_AD_Client_ID);
				values.add("" + p_AD_Org_ID);
				values.add("SYSDATE");
				values.add("SYSDATE");
				values.add("" + m_AD_User_ID);
				values.add("" + m_AD_User_ID);
				values.add("AD_Sequence_NextNo('I_Coda')");
				values.add(""+getAD_PInstance_ID());
				elements.addAll(headerData);
				elements.addAll(transactions.get(iterKey.next()));
				elements.addAll(summaryData);
				String details = null;
				for (String element : elements) {
					String value = null;
					String columnName = element.substring(0,
							element.indexOf('='));
					if (!columnNames.contains(columnName)) {
						columnNames.add(columnName);
						if (columnName.equals("XX_Detail"))
							details = element.substring(
									element.indexOf('=') + 1, element.length());
						else {
							if (details != null) {
								if (details.length() > 514)
									details = (details.substring(0, 513))
											.concat("'");
								values.add(details.replace('*', ' '));
								details = null;
							}
							value = element.substring(element.indexOf('=') + 1,
									element.length());
							values.add(value.replace('*', ' '));
						}
					} else if (columnName.equals("XX_Detail"))
						details = (details.concat(element.substring(
								element.indexOf('=') + 1, element.length())))
								.replaceAll("''", "");
				}
				StringBuilder sql = new StringBuilder("INSERT INTO I_Coda ");
				sql.append(toString(new ArrayList<String>(columnNames)));
				sql.append(" VALUES ");
				sql.append(toString(values));
				log.log(Level.WARNING, "Sql Insert : " + sql.toString());
				no += DB.executeUpdate(get_Trx(), sql.toString());
			}
		}
		addLog("@NoOfLines@ @Inserted@ = " + no);
	}

	private void updateCoda() {

		ArrayList<X_I_Coda> listCoda = new ArrayList<X_I_Coda>();
		for (int i_Coda_ID : PO.getAllIDs(X_I_Coda.Table_Name,
				"I_Isimported = 'N' AND AD_Client_ID = " + p_AD_Client_ID + " AND AD_PInstance_ID=" + getAD_PInstance_ID(),
				get_Trx())) {
			X_I_Coda i_Coda = new X_I_Coda(getCtx(), i_Coda_ID, get_Trx());
			if (i_Coda.isXX_BDebit())
				i_Coda.setBeginningBalance(i_Coda.getBeginningBalance().negate());
			if (i_Coda.isXX_EDebit())
				i_Coda.setEndingBalance(i_Coda.getEndingBalance().negate());
			if (i_Coda.isXX_Debit())
				i_Coda.setTrxAmt(i_Coda.getTrxAmt().negate());
			if (!i_Coda.isXX_Strd())
				i_Coda.setXX_StrdCode(null);
			i_Coda.setStatementDifference(i_Coda.getXX_TotCredit().subtract(
					i_Coda.getXX_TotDebit()));
			if (i_Coda.getXX_Com1() != null && !i_Coda.getXX_Com1().equals(""))
				i_Coda.setXX_Com1(i_Coda.getXX_Com1().replace("-", "_"));
			if (i_Coda.getXX_Com2() != null && !i_Coda.getXX_Com2().equals(""))
				i_Coda.setXX_Com2(i_Coda.getXX_Com2().replace("-", "_"));
			if (i_Coda.getXX_Com3() != null && !i_Coda.getXX_Com3().equals(""))
				i_Coda.setXX_Com3(i_Coda.getXX_Com3().replace("-", "_"));			
			listCoda.add(i_Coda);
		}
		PO.saveAll(get_Trx(), listCoda);
	}

	public String toString(ArrayList<String> al) {
		Iterator<String> i = al.iterator();
		if (!i.hasNext())
			return "()";
		StringBuilder sb = new StringBuilder();
		sb.append('(');
		for (;;) {
			String e = i.next();
			sb.append(e);
			if (!i.hasNext())
				return sb.append(')').toString();
			sb.append(", ");
		}
	}

	private class BankStatement {

		private ArrayList<String> headerFields;
		private LinkedHashMap<String, ArrayList<String>> transactions;
		private ArrayList<String> summaryFields;

		public BankStatement(ArrayList<String> headerFields,
				LinkedHashMap<String, ArrayList<String>> transactions,
				ArrayList<String> summaryFields) {
			this.setHeaderFields(headerFields);
			this.setTransactions(transactions);
			this.setSummaryFields(summaryFields);
		}

		public ArrayList<String> getHeaderFields() {
			return headerFields;
		}

		public void setHeaderFields(ArrayList<String> headerFields) {
			this.headerFields = headerFields;
		}

		public LinkedHashMap<String, ArrayList<String>> getTransactions() {
			return transactions;
		}

		public void setTransactions(
				LinkedHashMap<String, ArrayList<String>> transactions) {
			this.transactions = transactions;
		}

		public ArrayList<String> getSummaryFields() {
			return summaryFields;
		}

		public void setSummaryFields(ArrayList<String> summaryFields) {
			this.summaryFields = summaryFields;
		}
	}

}