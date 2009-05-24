﻿//------------------------------------------------------------------------------
// <auto-generated>
//     このコードはツールによって生成されました。
//     ランタイム バージョン:2.0.50727.3082
//
//     このファイルへの変更は、以下の状況下で不正な動作の原因になったり、
//     コードが再生成されるときに損失したりします。
// </auto-generated>
//------------------------------------------------------------------------------

// 
// このソース コードは Microsoft.VSDesigner、バージョン 2.0.50727.3082 によって自動生成されました。
// 
#pragma warning disable 1591

namespace Quiz.net.jomura {
    using System.Diagnostics;
    using System.Web.Services;
    using System.ComponentModel;
    using System.Web.Services.Protocols;
    using System;
    using System.Xml.Serialization;
    
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Web.Services", "2.0.50727.3053")]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Web.Services.WebServiceBindingAttribute(Name="QuizServiceSoap", Namespace="http://jomura.net/Quiz/")]
    public partial class QuizService : System.Web.Services.Protocols.SoapHttpClientProtocol {
        
        private System.Threading.SendOrPostCallback loadQuestionOperationCompleted;
        
        private System.Threading.SendOrPostCallback getQuestionOperationCompleted;
        
        private System.Threading.SendOrPostCallback getTitlesOperationCompleted;
        
        private System.Threading.SendOrPostCallback getQuestionByTitleOperationCompleted;
        
        private bool useDefaultCredentialsSetExplicitly;
        
        /// <remarks/>
        public QuizService() {
            this.Url = global::Quiz.Properties.Settings.Default.Quiz35_net_jomora_Quiz_QuizService;
            if ((this.IsLocalFileSystemWebService(this.Url) == true)) {
                this.UseDefaultCredentials = true;
                this.useDefaultCredentialsSetExplicitly = false;
            }
            else {
                this.useDefaultCredentialsSetExplicitly = true;
            }
        }
        
        public new string Url {
            get {
                return base.Url;
            }
            set {
                if ((((this.IsLocalFileSystemWebService(base.Url) == true) 
                            && (this.useDefaultCredentialsSetExplicitly == false)) 
                            && (this.IsLocalFileSystemWebService(value) == false))) {
                    base.UseDefaultCredentials = false;
                }
                base.Url = value;
            }
        }
        
        public new bool UseDefaultCredentials {
            get {
                return base.UseDefaultCredentials;
            }
            set {
                base.UseDefaultCredentials = value;
                this.useDefaultCredentialsSetExplicitly = true;
            }
        }
        
        /// <remarks/>
        public event loadQuestionCompletedEventHandler loadQuestionCompleted;
        
        /// <remarks/>
        public event getQuestionCompletedEventHandler getQuestionCompleted;
        
        /// <remarks/>
        public event getTitlesCompletedEventHandler getTitlesCompleted;
        
        /// <remarks/>
        public event getQuestionByTitleCompletedEventHandler getQuestionByTitleCompleted;
        
        /// <remarks/>
        [System.Web.Services.Protocols.SoapDocumentMethodAttribute("http://jomura.net/Quiz/loadQuestion", RequestNamespace="http://jomura.net/Quiz/", ResponseNamespace="http://jomura.net/Quiz/", Use=System.Web.Services.Description.SoapBindingUse.Literal, ParameterStyle=System.Web.Services.Protocols.SoapParameterStyle.Wrapped)]
        public int loadQuestion() {
            object[] results = this.Invoke("loadQuestion", new object[0]);
            return ((int)(results[0]));
        }
        
        /// <remarks/>
        public void loadQuestionAsync() {
            this.loadQuestionAsync(null);
        }
        
        /// <remarks/>
        public void loadQuestionAsync(object userState) {
            if ((this.loadQuestionOperationCompleted == null)) {
                this.loadQuestionOperationCompleted = new System.Threading.SendOrPostCallback(this.OnloadQuestionOperationCompleted);
            }
            this.InvokeAsync("loadQuestion", new object[0], this.loadQuestionOperationCompleted, userState);
        }
        
        private void OnloadQuestionOperationCompleted(object arg) {
            if ((this.loadQuestionCompleted != null)) {
                System.Web.Services.Protocols.InvokeCompletedEventArgs invokeArgs = ((System.Web.Services.Protocols.InvokeCompletedEventArgs)(arg));
                this.loadQuestionCompleted(this, new loadQuestionCompletedEventArgs(invokeArgs.Results, invokeArgs.Error, invokeArgs.Cancelled, invokeArgs.UserState));
            }
        }
        
        /// <remarks/>
        [System.Web.Services.Protocols.SoapDocumentMethodAttribute("http://jomura.net/Quiz/getQuestion", RequestNamespace="http://jomura.net/Quiz/", ResponseNamespace="http://jomura.net/Quiz/", Use=System.Web.Services.Description.SoapBindingUse.Literal, ParameterStyle=System.Web.Services.Protocols.SoapParameterStyle.Wrapped)]
        public Question getQuestion() {
            object[] results = this.Invoke("getQuestion", new object[0]);
            return ((Question)(results[0]));
        }
        
        /// <remarks/>
        public void getQuestionAsync() {
            this.getQuestionAsync(null);
        }
        
        /// <remarks/>
        public void getQuestionAsync(object userState) {
            if ((this.getQuestionOperationCompleted == null)) {
                this.getQuestionOperationCompleted = new System.Threading.SendOrPostCallback(this.OngetQuestionOperationCompleted);
            }
            this.InvokeAsync("getQuestion", new object[0], this.getQuestionOperationCompleted, userState);
        }
        
        private void OngetQuestionOperationCompleted(object arg) {
            if ((this.getQuestionCompleted != null)) {
                System.Web.Services.Protocols.InvokeCompletedEventArgs invokeArgs = ((System.Web.Services.Protocols.InvokeCompletedEventArgs)(arg));
                this.getQuestionCompleted(this, new getQuestionCompletedEventArgs(invokeArgs.Results, invokeArgs.Error, invokeArgs.Cancelled, invokeArgs.UserState));
            }
        }
        
        /// <remarks/>
        [System.Web.Services.Protocols.SoapDocumentMethodAttribute("http://jomura.net/Quiz/getTitles", RequestNamespace="http://jomura.net/Quiz/", ResponseNamespace="http://jomura.net/Quiz/", Use=System.Web.Services.Description.SoapBindingUse.Literal, ParameterStyle=System.Web.Services.Protocols.SoapParameterStyle.Wrapped)]
        public string[] getTitles() {
            object[] results = this.Invoke("getTitles", new object[0]);
            return ((string[])(results[0]));
        }
        
        /// <remarks/>
        public void getTitlesAsync() {
            this.getTitlesAsync(null);
        }
        
        /// <remarks/>
        public void getTitlesAsync(object userState) {
            if ((this.getTitlesOperationCompleted == null)) {
                this.getTitlesOperationCompleted = new System.Threading.SendOrPostCallback(this.OngetTitlesOperationCompleted);
            }
            this.InvokeAsync("getTitles", new object[0], this.getTitlesOperationCompleted, userState);
        }
        
        private void OngetTitlesOperationCompleted(object arg) {
            if ((this.getTitlesCompleted != null)) {
                System.Web.Services.Protocols.InvokeCompletedEventArgs invokeArgs = ((System.Web.Services.Protocols.InvokeCompletedEventArgs)(arg));
                this.getTitlesCompleted(this, new getTitlesCompletedEventArgs(invokeArgs.Results, invokeArgs.Error, invokeArgs.Cancelled, invokeArgs.UserState));
            }
        }
        
        /// <remarks/>
        [System.Web.Services.Protocols.SoapDocumentMethodAttribute("http://jomura.net/Quiz/getQuestionByTitle", RequestNamespace="http://jomura.net/Quiz/", ResponseNamespace="http://jomura.net/Quiz/", Use=System.Web.Services.Description.SoapBindingUse.Literal, ParameterStyle=System.Web.Services.Protocols.SoapParameterStyle.Wrapped)]
        public Question getQuestionByTitle(string title) {
            object[] results = this.Invoke("getQuestionByTitle", new object[] {
                        title});
            return ((Question)(results[0]));
        }
        
        /// <remarks/>
        public void getQuestionByTitleAsync(string title) {
            this.getQuestionByTitleAsync(title, null);
        }
        
        /// <remarks/>
        public void getQuestionByTitleAsync(string title, object userState) {
            if ((this.getQuestionByTitleOperationCompleted == null)) {
                this.getQuestionByTitleOperationCompleted = new System.Threading.SendOrPostCallback(this.OngetQuestionByTitleOperationCompleted);
            }
            this.InvokeAsync("getQuestionByTitle", new object[] {
                        title}, this.getQuestionByTitleOperationCompleted, userState);
        }
        
        private void OngetQuestionByTitleOperationCompleted(object arg) {
            if ((this.getQuestionByTitleCompleted != null)) {
                System.Web.Services.Protocols.InvokeCompletedEventArgs invokeArgs = ((System.Web.Services.Protocols.InvokeCompletedEventArgs)(arg));
                this.getQuestionByTitleCompleted(this, new getQuestionByTitleCompletedEventArgs(invokeArgs.Results, invokeArgs.Error, invokeArgs.Cancelled, invokeArgs.UserState));
            }
        }
        
        /// <remarks/>
        public new void CancelAsync(object userState) {
            base.CancelAsync(userState);
        }
        
        private bool IsLocalFileSystemWebService(string url) {
            if (((url == null) 
                        || (url == string.Empty))) {
                return false;
            }
            System.Uri wsUri = new System.Uri(url);
            if (((wsUri.Port >= 1024) 
                        && (string.Compare(wsUri.Host, "localHost", System.StringComparison.OrdinalIgnoreCase) == 0))) {
                return true;
            }
            return false;
        }
    }
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Xml", "2.0.50727.3082")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(Namespace="http://jomura.net/Quiz/")]
    public partial class Question {
        
        private string quizTitleField;
        
        private string groupNameField;
        
        private string sentenceField;
        
        private Choice[] choicesField;
        
        private string commentField;
        
        /// <remarks/>
        public string quizTitle {
            get {
                return this.quizTitleField;
            }
            set {
                this.quizTitleField = value;
            }
        }
        
        /// <remarks/>
        public string groupName {
            get {
                return this.groupNameField;
            }
            set {
                this.groupNameField = value;
            }
        }
        
        /// <remarks/>
        public string sentence {
            get {
                return this.sentenceField;
            }
            set {
                this.sentenceField = value;
            }
        }
        
        /// <remarks/>
        public Choice[] choices {
            get {
                return this.choicesField;
            }
            set {
                this.choicesField = value;
            }
        }
        
        /// <remarks/>
        public string comment {
            get {
                return this.commentField;
            }
            set {
                this.commentField = value;
            }
        }
    }
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Xml", "2.0.50727.3082")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(Namespace="http://jomura.net/Quiz/")]
    public partial class Choice {
        
        private bool correctField;
        
        private string textField;
        
        /// <remarks/>
        public bool correct {
            get {
                return this.correctField;
            }
            set {
                this.correctField = value;
            }
        }
        
        /// <remarks/>
        public string text {
            get {
                return this.textField;
            }
            set {
                this.textField = value;
            }
        }
    }
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Web.Services", "2.0.50727.3053")]
    public delegate void loadQuestionCompletedEventHandler(object sender, loadQuestionCompletedEventArgs e);
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Web.Services", "2.0.50727.3053")]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    public partial class loadQuestionCompletedEventArgs : System.ComponentModel.AsyncCompletedEventArgs {
        
        private object[] results;
        
        internal loadQuestionCompletedEventArgs(object[] results, System.Exception exception, bool cancelled, object userState) : 
                base(exception, cancelled, userState) {
            this.results = results;
        }
        
        /// <remarks/>
        public int Result {
            get {
                this.RaiseExceptionIfNecessary();
                return ((int)(this.results[0]));
            }
        }
    }
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Web.Services", "2.0.50727.3053")]
    public delegate void getQuestionCompletedEventHandler(object sender, getQuestionCompletedEventArgs e);
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Web.Services", "2.0.50727.3053")]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    public partial class getQuestionCompletedEventArgs : System.ComponentModel.AsyncCompletedEventArgs {
        
        private object[] results;
        
        internal getQuestionCompletedEventArgs(object[] results, System.Exception exception, bool cancelled, object userState) : 
                base(exception, cancelled, userState) {
            this.results = results;
        }
        
        /// <remarks/>
        public Question Result {
            get {
                this.RaiseExceptionIfNecessary();
                return ((Question)(this.results[0]));
            }
        }
    }
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Web.Services", "2.0.50727.3053")]
    public delegate void getTitlesCompletedEventHandler(object sender, getTitlesCompletedEventArgs e);
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Web.Services", "2.0.50727.3053")]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    public partial class getTitlesCompletedEventArgs : System.ComponentModel.AsyncCompletedEventArgs {
        
        private object[] results;
        
        internal getTitlesCompletedEventArgs(object[] results, System.Exception exception, bool cancelled, object userState) : 
                base(exception, cancelled, userState) {
            this.results = results;
        }
        
        /// <remarks/>
        public string[] Result {
            get {
                this.RaiseExceptionIfNecessary();
                return ((string[])(this.results[0]));
            }
        }
    }
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Web.Services", "2.0.50727.3053")]
    public delegate void getQuestionByTitleCompletedEventHandler(object sender, getQuestionByTitleCompletedEventArgs e);
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Web.Services", "2.0.50727.3053")]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    public partial class getQuestionByTitleCompletedEventArgs : System.ComponentModel.AsyncCompletedEventArgs {
        
        private object[] results;
        
        internal getQuestionByTitleCompletedEventArgs(object[] results, System.Exception exception, bool cancelled, object userState) : 
                base(exception, cancelled, userState) {
            this.results = results;
        }
        
        /// <remarks/>
        public Question Result {
            get {
                this.RaiseExceptionIfNecessary();
                return ((Question)(this.results[0]));
            }
        }
    }
}

#pragma warning restore 1591