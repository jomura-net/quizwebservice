/**
 * Quiz.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.2RC2 Nov 16, 2004 (12:19:44 EST) WSDL2Java emitter.
 */

package jomora.quiz;

public interface Quiz extends java.rmi.Remote {
    public int loadQuestions() throws java.rmi.RemoteException;
    public jomora.quiz.Question getQuestion() throws java.rmi.RemoteException;
}
