//
// This file was generated by the JavaTM Architecture for XML Binding(JAXB) Reference Implementation, vJAXB 2.1.10 in JDK 6 
// See <a href="http://java.sun.com/xml/jaxb">http://java.sun.com/xml/jaxb</a> 
// Any modifications to this file will be lost upon recompilation of the source schema. 
// Generated on: 2016.08.25 at 03:18:31 PM CET 
//


package gs1.shared.shared_common.xsd._3;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Java class for StringRangeType complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="StringRangeType">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element name="maximumValue" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="minimumValue" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "StringRangeType", propOrder = {
    "maximumValue",
    "minimumValue"
})
public class StringRangeType {

    protected String maximumValue;
    protected String minimumValue;

    /**
     * Gets the value of the maximumValue property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getMaximumValue() {
        return maximumValue;
    }

    /**
     * Sets the value of the maximumValue property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setMaximumValue(String value) {
        this.maximumValue = value;
    }

    /**
     * Gets the value of the minimumValue property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getMinimumValue() {
        return minimumValue;
    }

    /**
     * Sets the value of the minimumValue property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setMinimumValue(String value) {
        this.minimumValue = value;
    }

}
