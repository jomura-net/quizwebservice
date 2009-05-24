/**
 * QuizServiceSoapBindingSkeleton.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.2RC2 Nov 16, 2004 (12:19:44 EST) WSDL2Java emitter.
 */

package jomora.quiz;

public class QuizServiceSoapBindingSkeleton implements jomora.quiz.Quiz, org.apache.axis.wsdl.Skeleton {
    private jomora.quiz.Quiz impl;
    private static java.util.Map _myOperations = new java.util.Hashtable();
    private static java.util.Collection _myOperationsList = new java.util.ArrayList();

    /**
    * Returns List of OperationDesc objects with this name
    */
    public static java.util.List getOperationDescByName(java.lang.String methodName) {
        return (java.util.List)_myOperations.get(methodName);
    }

    /**
    * Returns Collection of OperationDescs
    */
    public static java.util.Collection getOperationDescs() {
        return _myOperationsList;
    }

    static {
        org.apache.axis.description.OperationDesc _oper;
        org.apache.axis.description.FaultDesc _fault;
        org.apache.axis.description.ParameterDesc [] _params;
        _params = new org.apache.axis.description.ParameterDesc [] {
        };
        _oper = new org.apache.axis.description.OperationDesc("loadQuestions", _params, new javax.xml.namespace.QName("", "loadQuestionsReturn"));
        _oper.setReturnType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "int"));
        _oper.setElementQName(new javax.xml.namespace.QName("urn:Quiz", "loadQuestions"));
        _oper.setSoapAction("");
        _myOperationsList.add(_oper);
        if (_myOperations.get("loadQuestions") == null) {
            _myOperations.put("loadQuestions", new java.util.ArrayList());
        }
        ((java.util.List)_myOperations.get("loadQuestions")).add(_oper);
        _params = new org.apache.axis.description.ParameterDesc [] {
        };
        _oper = new org.apache.axis.description.OperationDesc("getQuestion", _params, new javax.xml.namespace.QName("", "getQuestionReturn"));
        _oper.setReturnType(new javax.xml.namespace.QName("urn:Quiz", "Question"));
        _oper.setElementQName(new javax.xml.namespace.QName("urn:Quiz", "getQuestion"));
        _oper.setSoapAction("");
        _myOperationsList.add(_oper);
        if (_myOperations.get("getQuestion") == null) {
            _myOperations.put("getQuestion", new java.util.ArrayList());
        }
        ((java.util.List)_myOperations.get("getQuestion")).add(_oper);
    }

    public QuizServiceSoapBindingSkeleton() throws java.rmi.RemoteException {
        this.impl = new jomora.quiz.QuizServiceSoapBindingImpl();
    }

    public QuizServiceSoapBindingSkeleton(jomora.quiz.Quiz impl) {
        this.impl = impl;
    }
    public int loadQuestions() throws java.rmi.RemoteException
    {
        int ret = impl.loadQuestions();
        return ret;
    }

    public jomora.quiz.Question getQuestion() throws java.rmi.RemoteException
    {
        jomora.quiz.Question ret = impl.getQuestion();
        return ret;
    }

}
