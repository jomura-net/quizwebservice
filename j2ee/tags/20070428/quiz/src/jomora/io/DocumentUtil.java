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
 * <p>Documentに関するユーティリティクラス</p>
 * @author Jomora
 * @version 2002.11.06
 */
public class DocumentUtil {

    /**
     * XMLドキュメントを文字列に変換する。
     * 文字コードはUTF-8
     * @param document XMLドキュメント
     * @return 文字列化XML
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
     * 文字列をXMLドキュメント化する。
     * 文字コードはUTF-8
     * @param str 文字列
     * @return XMLドキュメント
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
     * XMLファイルを読み込み、Documentオブジェクトを返す
     * @param xmlfile XMLファイル
     * @return Documentオブジェクト
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
     * XMLファイルを読み込み、Documentオブジェクトを返す
     * @param xmlfilename XMLファイル名
     * @return Documentオブジェクト
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
     * Documentから、XMLファイルを書き出す。その際、文字コードを指定する。
     * @param xmlfile XMLファイル
     * @param document Documentオブジェクト
     * @param encoding 文字コード
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
     * Documentから、XMLファイルを書き出す。その際、文字コード指定を行う。
     * @param xmlfilename XMLファイル名
     * @param document Documentオブジェクト
     * @param encoding 文字コード
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
     * Documentから、XMLファイルを書き出す。文字コードはUTF-8となる。
     * @param xmlfile XMLファイル
     * @param document Documentオブジェクト
     */
    public static void writeDocument(File xmlfile, Document document)
        throws FileNotFoundException,
               IOException,
               TransformerConfigurationException,
               TransformerException {
        writeDocument(xmlfile, document, "UTF-8");
    }

    /**
     * Documentから、XMLファイルを書き出す。文字コードはUTF-8となる。
     * @param xmlfile XMLファイル
     * @param document Documentオブジェクト
     */
    public static void writeDocument(String xmlfile, Document document)
        throws FileNotFoundException,
               IOException,
               TransformerConfigurationException,
               TransformerException {
        writeDocument(new File(xmlfile), document, "UTF-8");
    }

    /**
     * <p>NodeからTAB文字で始まるテキストノードを再帰的に削除する。</p>
     * ※ このメソッド適応後にファイル出力すると、
     * TABおよびスペース文字によるインデントがなくなってしまうことに注意。
     * @param node ノードツリー
     * @return 不要なテキストノードが消えたノードツリー
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
