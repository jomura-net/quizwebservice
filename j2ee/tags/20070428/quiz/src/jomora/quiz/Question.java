/**
 * Question.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.2RC2 Nov 16, 2004 (12:19:44 EST) WSDL2Java emitter.
 */

package jomora.quiz;

public class Question  implements java.io.Serializable {
    private jomora.quiz.Choice[] choices;
    private java.lang.String comment;
    private java.lang.String groupName;
    private java.lang.String quizTitle;
    private java.lang.String sentence;

    public Question() {
    }

    public Question(
           jomora.quiz.Choice[] choices,
           java.lang.String comment,
           java.lang.String groupName,
           java.lang.String quizTitle,
           java.lang.String sentence) {
           this.choices = choices;
           this.comment = comment;
           this.groupName = groupName;
           this.quizTitle = quizTitle;
           this.sentence = sentence;
    }

    /**
     * Gets the choices value for this Question.
     * 
     * @return choices
     */
    public jomora.quiz.Choice[] getChoices() {
        return choices;
    }


    /**
     * Sets the choices value for this Question.
     * 
     * @param choices
     */
    public void setChoices(jomora.quiz.Choice[] choices) {
        this.choices = choices;
    }


    /**
     * Gets the comment value for this Question.
     * 
     * @return comment
     */
    public java.lang.String getComment() {
        return comment;
    }


    /**
     * Sets the comment value for this Question.
     * 
     * @param comment
     */
    public void setComment(java.lang.String comment) {
        this.comment = comment;
    }


    /**
     * Gets the groupName value for this Question.
     * 
     * @return groupName
     */
    public java.lang.String getGroupName() {
        return groupName;
    }


    /**
     * Sets the groupName value for this Question.
     * 
     * @param groupName
     */
    public void setGroupName(java.lang.String groupName) {
        this.groupName = groupName;
    }


    /**
     * Gets the quizTitle value for this Question.
     * 
     * @return quizTitle
     */
    public java.lang.String getQuizTitle() {
        return quizTitle;
    }


    /**
     * Sets the quizTitle value for this Question.
     * 
     * @param quizTitle
     */
    public void setQuizTitle(java.lang.String quizTitle) {
        this.quizTitle = quizTitle;
    }


    /**
     * Gets the sentence value for this Question.
     * 
     * @return sentence
     */
    public java.lang.String getSentence() {
        return sentence;
    }


    /**
     * Sets the sentence value for this Question.
     * 
     * @param sentence
     */
    public void setSentence(java.lang.String sentence) {
        this.sentence = sentence;
    }

    private java.lang.Object __equalsCalc = null;
    public synchronized boolean equals(java.lang.Object obj) {
        if (!(obj instanceof Question)) return false;
        Question other = (Question) obj;
        if (obj == null) return false;
        if (this == obj) return true;
        if (__equalsCalc != null) {
            return (__equalsCalc == obj);
        }
        __equalsCalc = obj;
        boolean _equals;
        _equals = true && 
            ((this.choices==null && other.getChoices()==null) || 
             (this.choices!=null &&
              java.util.Arrays.equals(this.choices, other.getChoices()))) &&
            ((this.comment==null && other.getComment()==null) || 
             (this.comment!=null &&
              this.comment.equals(other.getComment()))) &&
            ((this.groupName==null && other.getGroupName()==null) || 
             (this.groupName!=null &&
              this.groupName.equals(other.getGroupName()))) &&
            ((this.quizTitle==null && other.getQuizTitle()==null) || 
             (this.quizTitle!=null &&
              this.quizTitle.equals(other.getQuizTitle()))) &&
            ((this.sentence==null && other.getSentence()==null) || 
             (this.sentence!=null &&
              this.sentence.equals(other.getSentence())));
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
        if (getChoices() != null) {
            for (int i=0;
                 i<java.lang.reflect.Array.getLength(getChoices());
                 i++) {
                java.lang.Object obj = java.lang.reflect.Array.get(getChoices(), i);
                if (obj != null &&
                    !obj.getClass().isArray()) {
                    _hashCode += obj.hashCode();
                }
            }
        }
        if (getComment() != null) {
            _hashCode += getComment().hashCode();
        }
        if (getGroupName() != null) {
            _hashCode += getGroupName().hashCode();
        }
        if (getQuizTitle() != null) {
            _hashCode += getQuizTitle().hashCode();
        }
        if (getSentence() != null) {
            _hashCode += getSentence().hashCode();
        }
        __hashCodeCalc = false;
        return _hashCode;
    }

    // Type metadata
    private static org.apache.axis.description.TypeDesc typeDesc =
        new org.apache.axis.description.TypeDesc(Question.class, true);

    static {
        typeDesc.setXmlType(new javax.xml.namespace.QName("urn:Quiz", "Question"));
        org.apache.axis.description.ElementDesc elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("choices");
        elemField.setXmlName(new javax.xml.namespace.QName("", "choices"));
        elemField.setXmlType(new javax.xml.namespace.QName("urn:Quiz", "Choice"));
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("comment");
        elemField.setXmlName(new javax.xml.namespace.QName("", "comment"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("groupName");
        elemField.setXmlName(new javax.xml.namespace.QName("", "groupName"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("quizTitle");
        elemField.setXmlName(new javax.xml.namespace.QName("", "quizTitle"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("sentence");
        elemField.setXmlName(new javax.xml.namespace.QName("", "sentence"));
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
