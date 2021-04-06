# quizwebservice

## Description

QuizML形式で記述されたXMLファイルを読み込み、ランダムな問題を出力するWebサービス。  
実務運用の前段階としての、技術的な検証資料・サンプル。

## Changelog

### version:2.1 (r27)

* 公開URL : http://jomura.net/quiz/
    * http://jomura.net/quiz/Quiz.getQuestion.json でランダムなQuizを取得
    * http://jomura.net/quiz/Quiz.getTitles.json で取得したカテゴリから1つ選んで、getQuestionの引数に使える
    * http://jomura.net/quiz/QuizClient.js がサンプルになるか…

[Features]
* JSONP対応(#127)

### version:2.0 (r14)

* Platformは、Microsoft.NET 3.5(ASP.NET)のみ
* wsdl : ~http://jomura.net/Quiz35/QuizService.asmx?wsdl~
* jqueryを使った [Sample Client](http://jomura.net/svn/QuizWebService/asp.net/tags/Version2.3/Quiz35/client/) もリリースに含まれている。
* JSONPには未対応なため、サービスホストDomain以外からは利用が困難。

[Features]
* SOAPは、WS-I Basic Profile 1.1に従って、document/literal化
 →PHPのWebService Clientとの接続に様々な制約が発生
* JSONに対応
 →JQuery等のJavaScript Clientからも簡単にAJAX呼び出し可能
* 問題取得時にカテゴリを選択できるようにした。
* カテゴリの一覧を取得できるようにした。
* 毎朝4時過ぎに、 [Scheduler](http://jomura.net/wiki/?ASP.NET%2F%E5%AE%9A%E6%9C%9F%E7%9A%84%E3%81%ABTask%E3%82%92%E5%AE%9F%E8%A1%8C%E3%81%99%E3%82%8B) によるQuizXMLファイルの自動読み込みを行うようにした。(2007/09/08)

[Fixed Bugs]
* 特になし

### Version version:1.0 (r2)

* .NETとJavaで、XML処理時間を比較するために、同じ処理を書いてみた。
* .NET 1.0 & 1.1
    * wsdl : ~http://jomora.net/Quiz/QuizService.asmx?wsdl~
* Apache AXIS 1.2RC2
    * wsdl : ~http://jomora.net/quiz/services/QuizService?wsdl~
* 同一I/Fなので、endpointを変更するだけで、同一のリクエスタから接続できる。
* PHPとの相互接続性イジのため、RPC/encoded型
* ファイルからクイズデータをメモリに読み込むメソッド内で使用しているXPathの実行速度が、.NETとJavaではかなり異なる。現コードでは、.NETが2～3秒に対して、Javaは40～50秒かかる。

[Features]
* ランダムに選択されたクイズ一問を供給するメソッドと、ファイルからクイズデータをメモリに読み込むメソッドの2つだけを実装。
* (Java:AXIS版) QuizXMLの読み込み(loadQuestion)が遅い(40～50秒)ので、クイズ情報オブジェクトをファイル保存し、サーバー起動時にはそちらを使うよう変更しました。(2007.04.28)

[Fixed Bugs]
* 特になし
