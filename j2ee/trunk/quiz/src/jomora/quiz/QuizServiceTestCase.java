/**
 * QuizServiceTestCase.java
 * 
 * This file was auto-generated from WSDL by the Apache Axis 1.2RC2 Nov 16, 2004
 * (12:19:44 EST) WSDL2Java emitter.
 */

package jomora.quiz;

public class QuizServiceTestCase extends junit.framework.TestCase {
    public QuizServiceTestCase(java.lang.String name) {
        super(name);
    }

    /*
    public void testQuizServiceWSDL() throws Exception {
        javax.xml.rpc.ServiceFactory serviceFactory = javax.xml.rpc.ServiceFactory
                        .newInstance();
        java.net.URL url = new java.net.URL(
                        new jomora.quiz.QuizServiceLocator()
                                        .getQuizServiceAddress()
                                        + "?WSDL");
        javax.xml.rpc.Service service = serviceFactory.createService(url,
                        new jomora.quiz.QuizServiceLocator().getServiceName());
        assertTrue(service != null);
    }
    */
    
    public void test1QuizServiceLoadQuestions() throws Exception {
        jomora.quiz.QuizServiceSoapBindingStub binding;
        try {
            binding = (jomora.quiz.QuizServiceSoapBindingStub) new jomora.quiz.QuizServiceLocator()
                            .getQuizService();
        } catch (javax.xml.rpc.ServiceException jre) {
            if (jre.getLinkedCause() != null)
                jre.getLinkedCause().printStackTrace();
            throw new junit.framework.AssertionFailedError(
                            "JAX-RPC ServiceException caught: " + jre);
        }
        assertNotNull("binding is null", binding);
        // Time out after a minute
        binding.setTimeout(60000);
        // Test operation
        int value = -3;
        value = binding.loadQuestions();
        //TBD - validate results
        assertNotSame(-3, value);
    }

    /*
    public void test2QuizServiceGetQuestion() throws Exception {
        jomora.quiz.QuizServiceSoapBindingStub binding;
        try {
             binding = (jomora.quiz.QuizServiceSoapBindingStub) new
              jomora.quiz.QuizServiceLocator() .getQuizService(new
              java.net.URL( "http://jomora.bne.jp/quiz/services/QuizService"));
             
            binding = (jomora.quiz.QuizServiceSoapBindingStub) new jomora.quiz.QuizServiceLocator()
                            .getQuizService();
        } catch (javax.xml.rpc.ServiceException jre) {
            if (jre.getLinkedCause() != null)
                jre.getLinkedCause().printStackTrace();
            throw new junit.framework.AssertionFailedError(
                            "JAX-RPC ServiceException caught: " + jre);
        }
        assertNotNull("binding is null", binding);

        // Time out after a minute
        binding.setTimeout(60000);

        // Test operation
        jomora.quiz.Question value = null;
        value = binding.getQuestion();

        System.out.println(value.getSentence());
        System.out.println(value.getChoices()[0].getText());
        System.out.println(value.getChoices()[0].isCorrect());

        // TBD - validate results
    }
    */
}