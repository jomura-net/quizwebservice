/*
 * �쐬��: 2004/12/31
 */
package jomora.io;

import java.net.URI;

/**
 * @author jomora
 */
public class File extends java.io.File {

    public File(String arg0) {
        super(arg0);
    }

    public File(URI arg0) {
        super(arg0);
    }

    public File(java.io.File arg0, String arg1) {
        super(arg0, arg1);
    }

    public File(String arg0, String arg1) {
        super(arg0, arg1);
    }

	/**
	 * �g���q�����̃t�@�C�������擾����B
	 * @return �g���q���Ȃ����t�@�C����
	 */
	public String getNameWithoutExtension() {
		String filename = this.getName();
		return getNameWithoutExtension(filename);
	}

	/**
	 * �g���q�����̃t�@�C�������擾����B
	 * @param filename �g���q�t�̃t�@�C����
	 * @return �g���q���Ȃ����t�@�C����
	 */
	public static String getNameWithoutExtension(String filename) {
		int i = filename.lastIndexOf('.');
		if (i > 0 && i < filename.length() - 1) {
			return filename.substring(0, i);
		}
		return filename;
	}

	/**
	 * �g���q���擾����B
	 * @return �g���q
	 */
	public String getExtension() {
		String filename = this.getName();
		return getExtension(filename);
	}

	/**
	 * �g���q���擾����B
	 * @param filename �g���q�t�̃t�@�C����
	 * @return �g���q
	 */
	public static String getExtension(String filename) {
		int i = filename.lastIndexOf('.');
		if (i > 0 && i < filename.length() - 1) {
			return filename.substring(i + 1);
		}
		return "";
	}

}
