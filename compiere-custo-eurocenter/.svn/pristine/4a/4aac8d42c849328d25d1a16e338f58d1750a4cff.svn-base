package ru.compiere.report;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Field;
import java.security.KeyStore;
import java.security.MessageDigest;
import java.security.PrivateKey;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import org.apache.commons.io.FileUtils;
import org.apache.log4j.Logger;

import com.lowagie.text.DocumentException;
import com.lowagie.text.Rectangle;
import com.lowagie.text.pdf.AcroFields;
import com.lowagie.text.pdf.PdfDictionary;
import com.lowagie.text.pdf.PdfName;
import com.lowagie.text.pdf.PdfPKCS7;
import com.lowagie.text.pdf.PdfReader;
import com.lowagie.text.pdf.PdfSignatureAppearance;
import com.lowagie.text.pdf.PdfStamper;

public class PDFSignature {
	private static final int srcBufSize = 10 * 1024;

	private static byte[] src = new byte[srcBufSize];
	static {
		src[srcBufSize - 1] = 'x';
	}
	static Logger log = Logger.getLogger(PDFSignature.class);
	private static byte[] digest;
	private List<byte[]> digests = new ArrayList<byte[]>();

	private List<byte[]> signatures = new ArrayList<byte[]>();
	
	/**
	 * Nom du document PDF généré non signé
	 */
	private static String pdfUnSign  = "D:\\HelloWorld.pdf" ;
 
	/**
	 * Nom du document PDF généré signé
	 */
	private static String pdfSign = "D:\\HelloWorld_sign.pdf" ;

	public void process(String pdf) {
		digests = new ArrayList<byte[]>();
		log.info("pdf name: " + pdf);
		signatures = new ArrayList<byte[]>();
		try {
			KeyStore kall = PdfPKCS7.loadCacertsKeyStore();

			// Cargar pdf
			PdfReader reader = new PdfReader(pdf);
			AcroFields fields = reader.getAcroFields();

			String document = pdf.replaceAll("/", "-");

			ArrayList<String> signatures = fields.getSignatureNames();
			log.info("Firmas: " + signatures.size());
			for (String signature : signatures) {

				log.info("Signature name: " + signature);
				log.info("Signature covers whole document: "
						+ fields.signatureCoversWholeDocument(signature));
				log.info("Document revision: " + fields.getRevision(signature)
						+ " of " + fields.getTotalRevisions());
				// Start revision extraction
				/*
				 * 
				 * FileOutputStream out = new FileOutputStream(document +
				 * "-revision_" + fields.getRevision(signature) + ".pdf"); byte
				 * bb[] = new byte[8192]; InputStream ip =
				 * fields.extractRevision(signature); int n = 0; while ((n =
				 * ip.read(bb)) > 0) out.write(bb, 0, n); out.close();
				 * ip.close();
				 */
				ByteArrayOutputStream out = new ByteArrayOutputStream();
				byte bb[] = new byte[8192];
				InputStream ip = fields.extractRevision(signature);
				int n = 0;
				while ((n = ip.read(bb)) > 0)
					out.write(bb, 0, n);
				out.close();
				ip.close();
				MessageDigest md = MessageDigest.getInstance("SHA1");
				byte[] resum = md.digest(out.toByteArray());
				digests.add(resum);

				// End revision extraction
				try {
					PdfPKCS7 pk = fields.verifySignature(signature);
					Calendar cal = pk.getSignDate();
					Certificate pkc[] = pk.getCertificates();
					log.info("Subject: "
							+ PdfPKCS7.getSubjectFields(pk
									.getSigningCertificate()));
					log.info("Document modified: " + !pk.verify());

					Object fails[] = PdfPKCS7.verifyCertificates(pkc, kall,
							null, cal);
					if (fails == null)
						log.info("Certificates verified against the KeyStore");
					else
						log.info("Certificate failed: " + fails[1]);

					X509Certificate certificate = pk.getSigningCertificate();
					//
					 FileUtils.writeByteArrayToFile(new File(document + "-"
					 + signature + "_.crt"), certificate.getEncoded());

					Class<?> c = PdfPKCS7.class;

					Field f = c.getDeclaredField("digest");
					f.setAccessible(true);

					digest = byte[].class.cast(f.get(pk));
//
//					FileUtils.writeByteArrayToFile(
//							new File(document + "_.hash"), digest);

					f = c.getDeclaredField("sig");
					f.setAccessible(true);
				} catch (Exception e) {
					log.error(e, e);
				}

				// Signature sig = Signature.class.cast(f.get(pk));
				// c = Signature.class;
				//			
				// pkcs7 = byte[].class.cast(f.get(sig));
				// //

				PdfDictionary dictionary = fields
						.getSignatureDictionary(signature);

				PdfName key = new PdfName("Contents");
				byte[] encodedPKCS7 = dictionary.get(key).getBytes();

				this.signatures.add(encodedPKCS7);
			}
		} catch (Exception e) {
			log.error(e, e);
		}

	}
	
	public static final boolean signPdf()
			throws IOException, DocumentException, Exception
	{
		// Vous devez preciser ici le chemin d'acces a votre clef pkcs12
		String fileKey          = "/opt/CompiereTomcat2/keystore/EggoKeyStore.p12" ;
		// et ici sa "passPhrase"
		String fileKeyPassword  = "6-8LfCuis*" ;
 
		try {
			// Creation d'un KeyStore
			KeyStore ks = KeyStore.getInstance("pkcs12");
			// Chargement du certificat p12 dans el magasin
			ks.load(new FileInputStream(fileKey), fileKeyPassword.toCharArray());
			String alias = (String)ks.aliases().nextElement();
			// Recupération de la clef privée
			PrivateKey key = (PrivateKey)ks.getKey(alias, fileKeyPassword.toCharArray());
			// et de la chaine de certificats
			Certificate[] chain = ks.getCertificateChain(alias);
 
			// Lecture du document source
			PdfReader pdfReader = new PdfReader((new File(pdfUnSign)).getAbsolutePath());
			File outputFile = new File(pdfSign);
			// Creation du tampon de signature
			PdfStamper pdfStamper;
			pdfStamper = PdfStamper.createSignature(pdfReader, null, '\0', outputFile);
			PdfSignatureAppearance sap = pdfStamper.getSignatureAppearance();
			sap.setCrypto(key, chain, null, PdfSignatureAppearance.SELF_SIGNED);
			sap.setReason("Sign Eggo");
			sap.setLocation("");
			// Position du tampon sur la page (ici en bas a gauche page 1)
			sap.setVisibleSignature(new Rectangle(10, 10, 50, 30), 1, "sign_rbl");
 
			pdfStamper.setFormFlattening(true);
			pdfStamper.close();
 
			return true;
		}
		catch (Exception key) {
			throw new Exception(key);
		}
	}

	public List<byte[]> getDigests() {
		return digests;
	}

	public void setDigests(List<byte[]> digests) {
		this.digests = digests;
	}

	public List<byte[]> getSignatures() {
		return signatures;
	}

	public void setSignatures(List<byte[]> signatures) {
		this.signatures = signatures;
	}

	public static String getPdfUnSign() {
		return pdfUnSign;
	}

	public static void setPdfUnSign(String pdfUnSign) {
		PDFSignature.pdfUnSign = pdfUnSign;
	}

	public static String getPdfSign() {
		return pdfSign;
	}

	public static void setPdfSign(String pdfSign) {
		PDFSignature.pdfSign = pdfSign;
	}
}