/**
 * Choice.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.2RC2 Nov 16, 2004 (12:19:44 EST) WSDL2Java emitter.
 */

package jomora.quiz;

public class Choice  implements java.io.Serializable {
    private boolean correct;
    private java.lang.String text;

    public Choice() {
    }

    public Choice(
           boolean correct,
           java.lang.String text) {
           this.correct = correct;
           this.text = text;
    }


    /**
     * Gets the correct value for this Choice.
     * 
     * @return correct
     */
    public boolean isCorrect() {
        return correct;
    }


    /**
     * Sets the correct value for this Choice.
     * 
     * @param correct
     */
    public void setCorrect(boolean correct) {
        this.correct = correct;
    }


    /**
     * Gets the text value for this Choice.
     * 
     * @return text
     */
    public java.lang.String getText() {
        return text;
    }


    /**
     * Sets the text value for this Choice.
     * 
     * @param text
     */
    public void setText(java.lang.String text) {
        this.text = text;
    }

    private java.lang.Object __equalsCalc = null;
    public synchronized boolean equals(java.lang.Object obj) {
        if (!(obj instanceof Choice)) return false;
        Choice other = (Choice) obj;
        if (obj == null) return false;
        if (this == obj) return true;
        if (__equalsCalc != null) {
            return (__equalsCalc == obj);
        }
        __equalsCalc = obj;
        boolean _equals;
        _equals = true && 
            this.correct == other.isCorrect() &&
            ((this.text==null && other.getText()==null) || 
             (this.text!=null &&
              this.text.equals(other.getText())));
        __equalsCalc = null;
        return _equals;
    }

    private boolean __hashCodeCalc = false;
    public synchronized int hashCode() {
        if (__hashCodeCalc) {
            return 0;
        }
        __hashCodeCalc = true;
        int _hashCode = 1;
        _hashCode += (isCorrect() ? Boolean.TRUE : Boolean.FALSE).hashCode();
        if (getText() != null) {
            _hashCode += getText().hashCode();
        }
        __hashCodeCalc = false;
        return _hashCode;
    }

    // Type metadata
    private static org.apache.axis.description.TypeDesc typeDesc =
        new org.apache.axis.description.TypeDesc(Choice.class, true);

    static {
        typeDesc.setXmlType(new javax.xml.namespace.QName("urn:Quiz", "Choice"));
        org.apache.axis.description.ElementDesc elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("correct");
        elemField.setXmlName(new javax.xml.namespace.QName("", "correct"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "boolean"));
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("text");
        elemField.setXmlName(new javax.xml.namespace.QName("", "text"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        typeDesc.addFieldDesc(elemField);
    }

    /**
     * Return type metadata object
     */
    public static org.apache.axis.description.TypeDesc getTypeDesc() {
        return typeDesc;
    }

    /**
     * Get Custom Serializer
     */
    public static org.apache.axis.encoding.Serializer getSerializer(
           java.lang.String mechType, 
           java.lang.Class _javaType,  
           javax.xml.namespace.QName _xmlType) {
        return 
          new  org.apache.axis.encoding.ser.BeanSerializer(
            _javaType, _xmlType, typeDesc);
    }

    /**
     * Get Custom Deserializer
     */
    public static org.apache.axis.encoding.Deserializer getDeserializer(
           java.lang.String mechType, 
           java.lang.Class _javaType,  
           javax.xml.namespace.QName _xmlType) {
        return 
          new  org.apache.axis.encoding.ser.BeanDeserializer(
            _javaType, _xmlType, typeDesc);
    }

}
