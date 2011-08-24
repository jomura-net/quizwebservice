package net.jomura.quiz;


public class Question implements java.io.Serializable {
	private static final long serialVersionUID = 1L;

	private String quizTitle;
	private String groupName;
	private String sentence;
	private Choice[] choices;
	private String comment;

	public Question() {
	}

	public Question(Choice[] choices, String comment,
			String groupName, String quizTitle,
			String sentence) {
		this.choices = choices;
		this.comment = comment;
		this.groupName = groupName;
		this.quizTitle = quizTitle;
		this.sentence = sentence;
	}

	/**
	 * Gets the choices value for this Question.
	 * @return choices
	 */
	public Choice[] getChoices() {
		return choices;
	}

	/**
	 * Sets the choices value for this Question.
	 * @param choices
	 */
	public void setChoices(Choice[] choices) {
		this.choices = choices;
	}

	/**
	 * Gets the comment value for this Question.
	 * @return comment
	 */
	public String getComment() {
		return comment;
	}

	/**
	 * Sets the comment value for this Question.
	 * @param comment
	 */
	public void setComment(String comment) {
		this.comment = comment;
	}

	/**
	 * Gets the groupName value for this Question.
	 * @return groupName
	 */
	public String getGroupName() {
		return groupName;
	}

	/**
	 * Sets the groupName value for this Question.
	 * @param groupName
	 */
	public void setGroupName(String groupName) {
		this.groupName = groupName;
	}

	/**
	 * Gets the quizTitle value for this Question.
	 * @return quizTitle
	 */
	public String getQuizTitle() {
		return quizTitle;
	}

	/**
	 * Sets the quizTitle value for this Question.
	 * @param quizTitle
	 */
	public void setQuizTitle(String quizTitle) {
		this.quizTitle = quizTitle;
	}

	/**
	 * Gets the sentence value for this Question.
	 * @return sentence
	 */
	public String getSentence() {
		return sentence;
	}

	/**
	 * Sets the sentence value for this Question.
	 * @param sentence
	 */
	public void setSentence(String sentence) {
		this.sentence = sentence;
	}

}
