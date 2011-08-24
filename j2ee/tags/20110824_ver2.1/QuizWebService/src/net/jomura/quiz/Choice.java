package net.jomura.quiz;

import java.io.Serializable;

public class Choice implements Serializable {
	private static final long serialVersionUID = 1L;

	private boolean correct;
	private String text;

	public Choice() {
	}

	public Choice(boolean correct, String text) {
		this.correct = correct;
		this.text = text;
	}

	/**
	 * Gets the correct value for this Choice.
	 * @return correct
	 */
	public boolean isCorrect() {
		return correct;
	}

	/**
	 * Sets the correct value for this Choice.
	 * @param correct
	 */
	public void setCorrect(boolean correct) {
		this.correct = correct;
	}

	/**
	 * Gets the text value for this Choice.
	 * @return text
	 */
	public String getText() {
		return text;
	}

	/**
	 * Sets the text value for this Choice.
	 * @param text
	 */
	public void setText(String text) {
		this.text = text;
	}

}
