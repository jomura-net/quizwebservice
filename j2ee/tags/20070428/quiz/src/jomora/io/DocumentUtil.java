package jomora.io;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.UnsupportedEncodingException;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.FactoryConfigurationError;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.Result;
import javax.xml.transform.Source;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerConfigurationException;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.TransformerFactoryConfigurationError;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;

import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.xml.sax.SAXException;

/**
 * <p>Document�Ɋւ��郆�[�e�B���e�B�N���X</p>
 * @author Jomora
 * @version 2002.11.06
 */
public class DocumentUtil {

    /**
     * XML�h�L�������g�𕶎���ɕϊ�����B
     * �����R�[�h��UTF-8
     * @param document XML�h�L�������g
     * @return ������XML
     */
    public static String Document2String(Document document)
        throws UnsupportedEncodingException,
               TransformerException,
               TransformerFactoryConfigurationError {
        ByteArrayOutputStream baos = new ByteArrayOutputStream();
        TransformerFactory tf = TransformerFactory.newInstance();
        Transformer t = tf.newTransformer();
        Source source = new DOMSource(document);
        Result result = new StreamResult(baos);
        t.transform(source, result);
        return baos.toString("UTF-8");
    }

    /**
     * �������XML�h�L�������g������B
     * �����R�[�h��UTF-8
     * @param str ������
     * @return XML�h�L�������g
     */
    public static Document String2Document(String str)
        throws ParserConfigurationException,
               FactoryConfigurationError,
               IOException,
               SAXException {
        DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
        DocumentBuilder db = dbf.newDocumentBuilder();
        ByteArrayInputStream bais =
            new ByteArrayInputStream(str.getBytes("UTF-8"));
        return db.parse(bais);
    }

    /**
     * XML�t�@�C����ǂݍ��݁ADocument�I�u�W�F�N�g��Ԃ�
     * @param xmlfile XML�t�@�C��
     * @return Document�I�u�W�F�N�g
     */
    public static Document readDocument(File xmlfile)
        throws ParserConfigurationException,
               IOException,
               SAXException {
        DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
        dbf.setNamespaceAware(false);
        DocumentBuilder db = dbf.newDocumentBuilder();
        return db.parse(xmlfile);
    }

    /**
     * XML�t�@�C����ǂݍ��݁ADocument�I�u�W�F�N�g��Ԃ�
     * @param xmlfilename XML�t�@�C����
     * @return Document�I�u�W�F�N�g
     */
    public static Document readDocument(String xmlfilename)
        throws ParserConfigurationException,
               IOException,
               SAXException {
        Document document = readDocument(new File(xmlfilename));
        //document.normalize();
        return document;
    }

    /**
     * Document����AXML�t�@�C���������o���B���̍ہA�����R�[�h���w�肷��B
     * @param xmlfile XML�t�@�C��
     * @param document Document�I�u�W�F�N�g
     * @param encoding �����R�[�h
     */
    public static void writeDocument(File xmlfile,
                                     Document document,
                                     String encoding)
        throws FileNotFoundException,
               IOException,
               TransformerConfigurationException,
               TransformerException {
        TransformerFactory tff = TransformerFactory.newInstance();
        Transformer transformer = tff.newTransformer();
        transformer.setOutputProperty("encoding", encoding);
        //transformer.setOutputProperty("standalone", "yes");
        transformer.setOutputProperty("indent", "yes");
        transformer.transform(new DOMSource(document),
            new StreamResult(xmlfile));
    }

    /**
     * Document����AXML�t�@�C���������o���B���̍ہA�����R�[�h�w����s���B
     * @param xmlfilename XML�t�@�C����
     * @param document Document�I�u�W�F�N�g
     * @param encoding �����R�[�h
     */
    public static void writeDocument(String xmlfilename,
                                     Document document,
                                     String encoding)
        throws FileNotFoundException,
               IOException,
               TransformerConfigurationException,
               TransformerException {
        writeDocument(new File(xmlfilename), document, encoding);
    }

    /**
     * Document����AXML�t�@�C���������o���B�����R�[�h��UTF-8�ƂȂ�B
     * @param xmlfile XML�t�@�C��
     * @param document Document�I�u�W�F�N�g
     */
    public static void writeDocument(File xmlfile, Document document)
        throws FileNotFoundException,
               IOException,
               TransformerConfigurationException,
               TransformerException {
        writeDocument(xmlfile, document, "UTF-8");
    }

    /**
     * Document����AXML�t�@�C���������o���B�����R�[�h��UTF-8�ƂȂ�B
     * @param xmlfile XML�t�@�C��
     * @param document Document�I�u�W�F�N�g
     */
    public static void writeDocument(String xmlfile, Document document)
        throws FileNotFoundException,
               IOException,
               TransformerConfigurationException,
               TransformerException {
        writeDocument(new File(xmlfile), document, "UTF-8");
    }

    /**
     * <p>Node����TAB�����Ŏn�܂�e�L�X�g�m�[�h���ċA�I�ɍ폜����B</p>
     * �� ���̃��\�b�h�K����Ƀt�@�C���o�͂���ƁA
     * TAB����уX�y�[�X�����ɂ��C���f���g���Ȃ��Ȃ��Ă��܂����Ƃɒ��ӁB
     * @param node �m�[�h�c���[
     * @return �s�v�ȃe�L�X�g�m�[�h���������m�[�h�c���[
     */
    public static Node clean(Node node) {
        if (node.hasChildNodes()) {
            Node childnode = node.getFirstChild();
            while (childnode != null) {
                if (childnode.getNodeType() == Node.TEXT_NODE
                    && childnode.getNodeValue().trim().length() == 0) {
                    Node delnode = childnode;
                    childnode = childnode.getNextSibling();
                    node.removeChild(delnode);
                } else {
                    if (childnode.hasChildNodes()) {
                        clean(childnode);
                    }
                    childnode = childnode.getNextSibling();
                }
            }
        }
        return node;
    }
}
