//
// This file was generated by the JavaTM Architecture for XML Binding(JAXB) Reference Implementation, vJAXB 2.1.10 in JDK 6 
// See <a href="http://java.sun.com/xml/jaxb">http://java.sun.com/xml/jaxb</a> 
// Any modifications to this file will be lost upon recompilation of the source schema. 
// Generated on: 2016.08.25 at 03:18:31 PM CET 
//


package gs1.shared.shared_common.xsd._3;

import javax.xml.bind.annotation.XmlEnum;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Java class for NonBinaryLogicEnumerationType.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * <p>
 * <pre>
 * &lt;simpleType name="NonBinaryLogicEnumerationType">
 *   &lt;restriction base="{http://www.w3.org/2001/XMLSchema}string">
 *     &lt;enumeration value="FALSE"/>
 *     &lt;enumeration value="NOT_APPLICABLE"/>
 *     &lt;enumeration value="TRUE"/>
 *     &lt;enumeration value="UNSPECIFIED"/>
 *   &lt;/restriction>
 * &lt;/simpleType>
 * </pre>
 * 
 */
@XmlType(name = "NonBinaryLogicEnumerationType")
@XmlEnum
public enum NonBinaryLogicEnumerationType {

    FALSE,
    NOT_APPLICABLE,
    TRUE,
    UNSPECIFIED;

    public String value() {
        return name();
    }

    public static NonBinaryLogicEnumerationType fromValue(String v) {
        return valueOf(v);
    }

}