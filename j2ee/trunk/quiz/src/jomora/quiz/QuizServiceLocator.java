/**
 * QuizServiceLocator.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.2RC2 Nov 16, 2004 (12:19:44 EST) WSDL2Java emitter.
 */

package jomora.quiz;

public class QuizServiceLocator extends org.apache.axis.client.Service implements jomora.quiz.QuizService {

    public QuizServiceLocator() {
    }


    public QuizServiceLocator(org.apache.axis.EngineConfiguration config) {
        super(config);
    }

    // Use to get a proxy class for QuizService
    private java.lang.String QuizService_address = "http://localhost/quiz/services/QuizService";

    public java.lang.String getQuizServiceAddress() {
        return QuizService_address;
    }

    // The WSDD service name defaults to the port name.
    private java.lang.String QuizServiceWSDDServiceName = "QuizService";

    public java.lang.String getQuizServiceWSDDServiceName() {
        return QuizServiceWSDDServiceName;
    }

    public void setQuizServiceWSDDServiceName(java.lang.String name) {
        QuizServiceWSDDServiceName = name;
    }

    public jomora.quiz.Quiz getQuizService() throws javax.xml.rpc.ServiceException {
       java.net.URL endpoint;
        try {
            endpoint = new java.net.URL(QuizService_address);
        }
        catch (java.net.MalformedURLException e) {
            throw new javax.xml.rpc.ServiceException(e);
        }
        return getQuizService(endpoint);
    }

    public jomora.quiz.Quiz getQuizService(java.net.URL portAddress) throws javax.xml.rpc.ServiceException {
        try {
            jomora.quiz.QuizServiceSoapBindingStub _stub = new jomora.quiz.QuizServiceSoapBindingStub(portAddress, this);
            _stub.setPortName(getQuizServiceWSDDServiceName());
            return _stub;
        }
        catch (org.apache.axis.AxisFault e) {
            return null;
        }
    }

    public void setQuizServiceEndpointAddress(java.lang.String address) {
        QuizService_address = address;
    }

    /**
     * For the given interface, get the stub implementation.
     * If this service has no port for the given interface,
     * then ServiceException is thrown.
     */
    public java.rmi.Remote getPort(Class serviceEndpointInterface) throws javax.xml.rpc.ServiceException {
        try {
            if (jomora.quiz.Quiz.class.isAssignableFrom(serviceEndpointInterface)) {
                jomora.quiz.QuizServiceSoapBindingStub _stub = new jomora.quiz.QuizServiceSoapBindingStub(new java.net.URL(QuizService_address), this);
                _stub.setPortName(getQuizServiceWSDDServiceName());
                return _stub;
            }
        }
        catch (java.lang.Throwable t) {
            throw new javax.xml.rpc.ServiceException(t);
        }
        throw new javax.xml.rpc.ServiceException("There is no stub implementation for the interface:  " + (serviceEndpointInterface == null ? "null" : serviceEndpointInterface.getName()));
    }

    /**
     * For the given interface, get the stub implementation.
     * If this service has no port for the given interface,
     * then ServiceException is thrown.
     */
    public java.rmi.Remote getPort(javax.xml.namespace.QName portName, Class serviceEndpointInterface) throws javax.xml.rpc.ServiceException {
        if (portName == null) {
            return getPort(serviceEndpointInterface);
        }
        java.lang.String inputPortName = portName.getLocalPart();
        if ("QuizService".equals(inputPortName)) {
            return getQuizService();
        }
        else  {
            java.rmi.Remote _stub = getPort(serviceEndpointInterface);
            ((org.apache.axis.client.Stub) _stub).setPortName(portName);
            return _stub;
        }
    }

    public javax.xml.namespace.QName getServiceName() {
        return new javax.xml.namespace.QName("urn:Quiz", "QuizService");
    }

    private java.util.HashSet ports = null;

    public java.util.Iterator getPorts() {
        if (ports == null) {
            ports = new java.util.HashSet();
            ports.add(new javax.xml.namespace.QName("urn:Quiz", "QuizService"));
        }
        return ports.iterator();
    }

    /**
    * Set the endpoint address for the specified port name.
    */
    public void setEndpointAddress(java.lang.String portName, java.lang.String address) throws javax.xml.rpc.ServiceException {
        if ("QuizService".equals(portName)) {
            setQuizServiceEndpointAddress(address);
        }
        else { // Unknown Port Name
            throw new javax.xml.rpc.ServiceException(" Cannot set Endpoint Address for Unknown Port" + portName);
        }
    }

    /**
    * Set the endpoint address for the specified port name.
    */
    public void setEndpointAddress(javax.xml.namespace.QName portName, java.lang.String address) throws javax.xml.rpc.ServiceException {
        setEndpointAddress(portName.getLocalPart(), address);
    }

}
