#if CODE_ANALYSIS
using System.Diagnostics.CodeAnalysis;

/*
 * コード解析の指摘解除
 */

//ハンガリアン表記チェック不要
[module: SuppressMessage("Microsoft.Naming", "CA1709:IdentifiersShouldBeCasedCorrectly", Scope = "namespace", Target = "Quiz.net.jomura", MessageId = "net")]
[module: SuppressMessage("Microsoft.Naming", "CA1709:IdentifiersShouldBeCasedCorrectly", Scope = "namespace", Target = "Quiz.net.jomura", MessageId = "jomura")]
[module: SuppressMessage("Microsoft.Naming", "CA1709:IdentifiersShouldBeCasedCorrectly", Scope = "type", Target = "Quiz.net.jomura.getTitlesCompletedEventHandler", MessageId = "get")]
[module: SuppressMessage("Microsoft.Naming", "CA1709:IdentifiersShouldBeCasedCorrectly", Scope = "member", Target = "Quiz.net.jomura.Choice.#correct", MessageId = "correct")]
[module: SuppressMessage("Microsoft.Naming", "CA1709:IdentifiersShouldBeCasedCorrectly", Scope = "member", Target = "Quiz.net.jomura.Choice.#text", MessageId = "text")]
[module: SuppressMessage("Microsoft.Naming", "CA1709:IdentifiersShouldBeCasedCorrectly", Scope = "type", Target = "Quiz.net.jomura.loadQuestionCompletedEventArgs", MessageId = "load")]
[module: SuppressMessage("Microsoft.Naming", "CA1709:IdentifiersShouldBeCasedCorrectly", Scope = "type", Target = "Quiz.net.jomura.getQuestionCompletedEventArgs", MessageId = "get")]
[module: SuppressMessage("Microsoft.Naming", "CA1709:IdentifiersShouldBeCasedCorrectly", Scope = "member", Target = "Quiz.net.jomura.QuizService.#loadQuestionCompleted", MessageId = "load")]
[module: SuppressMessage("Microsoft.Naming", "CA1709:IdentifiersShouldBeCasedCorrectly", Scope = "member", Target = "Quiz.net.jomura.QuizService.#getTitlesAsync(System.Object)", MessageId = "get")]
[module: SuppressMessage("Microsoft.Naming", "CA1709:IdentifiersShouldBeCasedCorrectly", Scope = "member", Target = "Quiz.net.jomura.QuizService.#getQuestionByTitleAsync(System.String)", MessageId = "get")]
[module: SuppressMessage("Microsoft.Naming", "CA1709:IdentifiersShouldBeCasedCorrectly", Scope = "member", Target = "Quiz.net.jomura.QuizService.#getQuestionByTitle(System.String)", MessageId = "get")]
[module: SuppressMessage("Microsoft.Naming", "CA1709:IdentifiersShouldBeCasedCorrectly", Scope = "member", Target = "Quiz.net.jomura.QuizService.#getTitles()", MessageId = "get")]
[module: SuppressMessage("Microsoft.Naming", "CA1709:IdentifiersShouldBeCasedCorrectly", Scope = "member", Target = "Quiz.net.jomura.QuizService.#getQuestionAsync()", MessageId = "get")]
[module: SuppressMessage("Microsoft.Naming", "CA1709:IdentifiersShouldBeCasedCorrectly", Scope = "member", Target = "Quiz.net.jomura.QuizService.#getQuestionAsync(System.Object)", MessageId = "get")]
[module: SuppressMessage("Microsoft.Naming", "CA1709:IdentifiersShouldBeCasedCorrectly", Scope = "member", Target = "Quiz.net.jomura.QuizService.#getQuestionByTitleCompleted", MessageId = "get")]
[module: SuppressMessage("Microsoft.Naming", "CA1709:IdentifiersShouldBeCasedCorrectly", Scope = "member", Target = "Quiz.net.jomura.QuizService.#getQuestionCompleted", MessageId = "get")]
[module: SuppressMessage("Microsoft.Naming", "CA1709:IdentifiersShouldBeCasedCorrectly", Scope = "member", Target = "Quiz.net.jomura.QuizService.#loadQuestionAsync(System.Object)", MessageId = "load")]
[module: SuppressMessage("Microsoft.Naming", "CA1709:IdentifiersShouldBeCasedCorrectly", Scope = "member", Target = "Quiz.net.jomura.QuizService.#getQuestionByTitleAsync(System.String,System.Object)", MessageId = "get")]
[module: SuppressMessage("Microsoft.Naming", "CA1709:IdentifiersShouldBeCasedCorrectly", Scope = "member", Target = "Quiz.net.jomura.QuizService.#getTitlesCompleted", MessageId = "get")]
[module: SuppressMessage("Microsoft.Naming", "CA1709:IdentifiersShouldBeCasedCorrectly", Scope = "member", Target = "Quiz.net.jomura.QuizService.#loadQuestionAsync()", MessageId = "load")]
[module: SuppressMessage("Microsoft.Naming", "CA1709:IdentifiersShouldBeCasedCorrectly", Scope = "member", Target = "Quiz.net.jomura.QuizService.#getTitlesAsync()", MessageId = "get")]
[module: SuppressMessage("Microsoft.Naming", "CA1709:IdentifiersShouldBeCasedCorrectly", Scope = "member", Target = "Quiz.net.jomura.QuizService.#getQuestion()", MessageId = "get")]
[module: SuppressMessage("Microsoft.Naming", "CA1709:IdentifiersShouldBeCasedCorrectly", Scope = "member", Target = "Quiz.net.jomura.QuizService.#loadQuestion()", MessageId = "load")]
[module: SuppressMessage("Microsoft.Naming", "CA1709:IdentifiersShouldBeCasedCorrectly", Scope = "type", Target = "Quiz.net.jomura.getQuestionByTitleCompletedEventArgs", MessageId = "get")]
[module: SuppressMessage("Microsoft.Naming", "CA1709:IdentifiersShouldBeCasedCorrectly", Scope = "type", Target = "Quiz.net.jomura.getQuestionCompletedEventHandler", MessageId = "get")]
[module: SuppressMessage("Microsoft.Naming", "CA1709:IdentifiersShouldBeCasedCorrectly", Scope = "type", Target = "Quiz.net.jomura.getTitlesCompletedEventArgs", MessageId = "get")]
[module: SuppressMessage("Microsoft.Naming", "CA1709:IdentifiersShouldBeCasedCorrectly", Scope = "member", Target = "Quiz.net.jomura.Question.#quizTitle", MessageId = "quiz")]
[module: SuppressMessage("Microsoft.Naming", "CA1709:IdentifiersShouldBeCasedCorrectly", Scope = "member", Target = "Quiz.net.jomura.Question.#choices", MessageId = "choices")]
[module: SuppressMessage("Microsoft.Naming", "CA1709:IdentifiersShouldBeCasedCorrectly", Scope = "member", Target = "Quiz.net.jomura.Question.#groupName", MessageId = "group")]
[module: SuppressMessage("Microsoft.Naming", "CA1709:IdentifiersShouldBeCasedCorrectly", Scope = "member", Target = "Quiz.net.jomura.Question.#sentence", MessageId = "sentence")]
[module: SuppressMessage("Microsoft.Naming", "CA1709:IdentifiersShouldBeCasedCorrectly", Scope = "member", Target = "Quiz.net.jomura.Question.#comment", MessageId = "comment")]
[module: SuppressMessage("Microsoft.Naming", "CA1709:IdentifiersShouldBeCasedCorrectly", Scope = "type", Target = "Quiz.net.jomura.getQuestionByTitleCompletedEventHandler", MessageId = "get")]
[module: SuppressMessage("Microsoft.Naming", "CA1709:IdentifiersShouldBeCasedCorrectly", Scope = "type", Target = "Quiz.net.jomura.loadQuestionCompletedEventHandler", MessageId = "load")]
[module: SuppressMessage("Microsoft.Naming", "CA1709:IdentifiersShouldBeCasedCorrectly", Scope = "member", Target = "Quiz.Choice.#correct", MessageId = "correct")]
[module: SuppressMessage("Microsoft.Naming", "CA1709:IdentifiersShouldBeCasedCorrectly", Scope = "member", Target = "Quiz.Choice.#text", MessageId = "text")]
[module: SuppressMessage("Microsoft.Naming", "CA1709:IdentifiersShouldBeCasedCorrectly", Scope = "member", Target = "Quiz.QuizService.#getQuestion()", MessageId = "get")]
[module: SuppressMessage("Microsoft.Naming", "CA1709:IdentifiersShouldBeCasedCorrectly", Scope = "member", Target = "Quiz.QuizService.#loadQuestion()", MessageId = "load")]
[module: SuppressMessage("Microsoft.Naming", "CA1709:IdentifiersShouldBeCasedCorrectly", Scope = "member", Target = "Quiz.QuizService.#getTitles()", MessageId = "get")]
[module: SuppressMessage("Microsoft.Naming", "CA1709:IdentifiersShouldBeCasedCorrectly", Scope = "member", Target = "Quiz.QuizService.#getQuestionByTitle(System.String)", MessageId = "get")]
[module: SuppressMessage("Microsoft.Naming", "CA1709:IdentifiersShouldBeCasedCorrectly", Scope = "member", Target = "Quiz.Question.#quizTitle", MessageId = "quiz")]
[module: SuppressMessage("Microsoft.Naming", "CA1709:IdentifiersShouldBeCasedCorrectly", Scope = "member", Target = "Quiz.Question.#choices", MessageId = "choices")]
[module: SuppressMessage("Microsoft.Naming", "CA1709:IdentifiersShouldBeCasedCorrectly", Scope = "member", Target = "Quiz.Question.#copy()", MessageId = "copy")]
[module: SuppressMessage("Microsoft.Naming", "CA1709:IdentifiersShouldBeCasedCorrectly", Scope = "member", Target = "Quiz.Question.#groupName", MessageId = "group")]
[module: SuppressMessage("Microsoft.Naming", "CA1709:IdentifiersShouldBeCasedCorrectly", Scope = "member", Target = "Quiz.Question.#sentence", MessageId = "sentence")]
[module: SuppressMessage("Microsoft.Naming", "CA1709:IdentifiersShouldBeCasedCorrectly", Scope = "member", Target = "Quiz.Question.#comment", MessageId = "comment")]

[module: SuppressMessage("Microsoft.Design", "CA1031:DoNotCatchGeneralExceptionTypes", Scope = "member", Target = "Quiz.ScheduleService.#Tick(System.String,System.Object,System.Web.Caching.CacheItemRemovedReason)")]

//Webサービスの要素だから
[module: SuppressMessage("Microsoft.Design", "CA1024:UsePropertiesWhereAppropriate", Scope = "member", Target = "Quiz.QuizService.#getQuestion()")]
[module: SuppressMessage("Microsoft.Performance", "CA1819:PropertiesShouldNotReturnArrays", Scope = "member", Target = "Quiz.net.jomura.Question.#choices")]
[module: SuppressMessage("Microsoft.Performance", "CA1819:PropertiesShouldNotReturnArrays", Scope = "member", Target = "Quiz.Question.#choices")]

//テンプレートコード
[module: SuppressMessage("Microsoft.Security", "CA2109:ReviewVisibleEventHandlers", Scope = "member", Target = "Quiz.Global.#Application_Start(System.Object,System.EventArgs)")]

//自動生成コード
[module: SuppressMessage("Microsoft.Performance", "CA1822:MarkMembersAsStatic", Scope = "member", Target = "Quiz.net.jomura.QuizService.#IsLocalFileSystemWebService(System.String)")]
[module: SuppressMessage("Microsoft.Performance", "CA1819:PropertiesShouldNotReturnArrays", Scope = "member", Target = "Quiz.net.jomura.getTitlesCompletedEventArgs.#Result")]
[module: SuppressMessage("Microsoft.Performance", "CA1820:TestForEmptyStringsUsingStringLength", Scope = "member", Target = "Quiz.net.jomura.QuizService.#IsLocalFileSystemWebService(System.String)")]
[module: SuppressMessage("Microsoft.Design", "CA1024:UsePropertiesWhereAppropriate", Scope = "member", Target = "Quiz.net.jomura.QuizService.#getQuestion()")]
[module: SuppressMessage("Microsoft.Design", "CA1056:UriPropertiesShouldNotBeStrings", Scope = "member", Target = "Quiz.net.jomura.QuizService.#Url")]
[module: SuppressMessage("Microsoft.Design", "CA1003:UseGenericEventHandlerInstances", Scope = "type", Target = "Quiz.net.jomura.getTitlesCompletedEventHandler")]
[module: SuppressMessage("Microsoft.Design", "CA1003:UseGenericEventHandlerInstances", Scope = "type", Target = "Quiz.net.jomura.getQuestionCompletedEventHandler")]
[module: SuppressMessage("Microsoft.Design", "CA1003:UseGenericEventHandlerInstances", Scope = "type", Target = "Quiz.net.jomura.getQuestionByTitleCompletedEventHandler")]
[module: SuppressMessage("Microsoft.Design", "CA1003:UseGenericEventHandlerInstances", Scope = "type", Target = "Quiz.net.jomura.loadQuestionCompletedEventHandler")]

#endif
