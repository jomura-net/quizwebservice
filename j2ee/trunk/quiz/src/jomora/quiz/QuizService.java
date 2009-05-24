/**
 * QuizService.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.2RC2 Nov 16, 2004 (12:19:44 EST) WSDL2Java emitter.
 */

package jomora.quiz;

public interface QuizService extends javax.xml.rpc.Service {
    public java.lang.String getQuizServiceAddress();

    public jomora.quiz.Quiz getQuizService() throws javax.xml.rpc.ServiceException;

    public jomora.quiz.Quiz getQuizService(java.net.URL portAddress) throws javax.xml.rpc.ServiceException;
}
