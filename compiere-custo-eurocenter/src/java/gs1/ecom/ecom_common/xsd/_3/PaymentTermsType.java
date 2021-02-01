//
// This file was generated by the JavaTM Architecture for XML Binding(JAXB) Reference Implementation, vJAXB 2.1.10 in JDK 6 
// See <a href="http://java.sun.com/xml/jaxb">http://java.sun.com/xml/jaxb</a> 
// Any modifications to this file will be lost upon recompilation of the source schema. 
// Generated on: 2016.08.25 at 03:18:31 PM CET 
//


package gs1.ecom.ecom_common.xsd._3;

import java.util.ArrayList;
import java.util.List;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlSchemaType;
import javax.xml.bind.annotation.XmlType;
import javax.xml.datatype.XMLGregorianCalendar;
import gs1.shared.shared_common.xsd._3.PaymentTermsTypeCodeType;
import gs1.shared.shared_common.xsd._3.PaymentTimePeriodType;


/**
 * <p>Java class for PaymentTermsType complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="PaymentTermsType">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element name="paymentTermsEventCode" type="{urn:gs1:ecom:ecom_common:xsd:3}PaymentTermsEventCodeType"/>
 *         &lt;element name="paymentTermsTypeCode" type="{urn:gs1:shared:shared_common:xsd:3}PaymentTermsTypeCodeType"/>
 *         &lt;element name="proximoCutOffDay" type="{http://www.w3.org/2001/XMLSchema}gDay" minOccurs="0"/>
 *         &lt;element name="netPaymentDue" type="{urn:gs1:shared:shared_common:xsd:3}PaymentTimePeriodType" minOccurs="0"/>
 *         &lt;element name="installmentDue" type="{urn:gs1:ecom:ecom_common:xsd:3}InstallmentDueType" minOccurs="0"/>
 *         &lt;element name="paymentTermsDiscount" type="{urn:gs1:ecom:ecom_common:xsd:3}PaymentTermsDiscountType" maxOccurs="unbounded" minOccurs="0"/>
 *         &lt;element name="paymentMethod" type="{urn:gs1:ecom:ecom_common:xsd:3}PaymentMethodType" maxOccurs="unbounded" minOccurs="0"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "PaymentTermsType", propOrder = {
    "paymentTermsEventCode",
    "paymentTermsTypeCode",
    "proximoCutOffDay",
    "netPaymentDue",
    "installmentDue",
    "paymentTermsDiscount",
    "paymentMethod"
})
public class PaymentTermsType {

    @XmlElement(required = true)
    protected PaymentTermsEventCodeType paymentTermsEventCode;
    @XmlElement(required = true)
    protected PaymentTermsTypeCodeType paymentTermsTypeCode;
    @XmlSchemaType(name = "gDay")
    protected XMLGregorianCalendar proximoCutOffDay;
    protected PaymentTimePeriodType netPaymentDue;
    protected InstallmentDueType installmentDue;
    protected List<PaymentTermsDiscountType> paymentTermsDiscount;
    protected List<PaymentMethodType> paymentMethod;

    /**
     * Gets the value of the paymentTermsEventCode property.
     * 
     * @return
     *     possible object is
     *     {@link PaymentTermsEventCodeType }
     *     
     */
    public PaymentTermsEventCodeType getPaymentTermsEventCode() {
        return paymentTermsEventCode;
    }

    /**
     * Sets the value of the paymentTermsEventCode property.
     * 
     * @param value
     *     allowed object is
     *     {@link PaymentTermsEventCodeType }
     *     
     */
    public void setPaymentTermsEventCode(PaymentTermsEventCodeType value) {
        this.paymentTermsEventCode = value;
    }

    /**
     * Gets the value of the paymentTermsTypeCode property.
     * 
     * @return
     *     possible object is
     *     {@link PaymentTermsTypeCodeType }
     *     
     */
    public PaymentTermsTypeCodeType getPaymentTermsTypeCode() {
        return paymentTermsTypeCode;
    }

    /**
     * Sets the value of the paymentTermsTypeCode property.
     * 
     * @param value
     *     allowed object is
     *     {@link PaymentTermsTypeCodeType }
     *     
     */
    public void setPaymentTermsTypeCode(PaymentTermsTypeCodeType value) {
        this.paymentTermsTypeCode = value;
    }

    /**
     * Gets the value of the proximoCutOffDay property.
     * 
     * @return
     *     possible object is
     *     {@link XMLGregorianCalendar }
     *     
     */
    public XMLGregorianCalendar getProximoCutOffDay() {
        return proximoCutOffDay;
    }

    /**
     * Sets the value of the proximoCutOffDay property.
     * 
     * @param value
     *     allowed object is
     *     {@link XMLGregorianCalendar }
     *     
     */
    public void setProximoCutOffDay(XMLGregorianCalendar value) {
        this.proximoCutOffDay = value;
    }

    /**
     * Gets the value of the netPaymentDue property.
     * 
     * @return
     *     possible object is
     *     {@link PaymentTimePeriodType }
     *     
     */
    public PaymentTimePeriodType getNetPaymentDue() {
        return netPaymentDue;
    }

    /**
     * Sets the value of the netPaymentDue property.
     * 
     * @param value
     *     allowed object is
     *     {@link PaymentTimePeriodType }
     *     
     */
    public void setNetPaymentDue(PaymentTimePeriodType value) {
        this.netPaymentDue = value;
    }

    /**
     * Gets the value of the installmentDue property.
     * 
     * @return
     *     possible object is
     *     {@link InstallmentDueType }
     *     
     */
    public InstallmentDueType getInstallmentDue() {
        return installmentDue;
    }

    /**
     * Sets the value of the installmentDue property.
     * 
     * @param value
     *     allowed object is
     *     {@link InstallmentDueType }
     *     
     */
    public void setInstallmentDue(InstallmentDueType value) {
        this.installmentDue = value;
    }

    /**
     * Gets the value of the paymentTermsDiscount property.
     * 
     * <p>
     * This accessor method returns a reference to the live list,
     * not a snapshot. Therefore any modification you make to the
     * returned list will be present inside the JAXB object.
     * This is why there is not a <CODE>set</CODE> method for the paymentTermsDiscount property.
     * 
     * <p>
     * For example, to add a new item, do as follows:
     * <pre>
     *    getPaymentTermsDiscount().add(newItem);
     * </pre>
     * 
     * 
     * <p>
     * Objects of the following type(s) are allowed in the list
     * {@link PaymentTermsDiscountType }
     * 
     * 
     */
    public List<PaymentTermsDiscountType> getPaymentTermsDiscount() {
        if (paymentTermsDiscount == null) {
            paymentTermsDiscount = new ArrayList<PaymentTermsDiscountType>();
        }
        return this.paymentTermsDiscount;
    }

    /**
     * Gets the value of the paymentMethod property.
     * 
     * <p>
     * This accessor method returns a reference to the live list,
     * not a snapshot. Therefore any modification you make to the
     * returned list will be present inside the JAXB object.
     * This is why there is not a <CODE>set</CODE> method for the paymentMethod property.
     * 
     * <p>
     * For example, to add a new item, do as follows:
     * <pre>
     *    getPaymentMethod().add(newItem);
     * </pre>
     * 
     * 
     * <p>
     * Objects of the following type(s) are allowed in the list
     * {@link PaymentMethodType }
     * 
     * 
     */
    public List<PaymentMethodType> getPaymentMethod() {
        if (paymentMethod == null) {
            paymentMethod = new ArrayList<PaymentMethodType>();
        }
        return this.paymentMethod;
    }

}