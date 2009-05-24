<?xml version="1.0" encoding="UTF-8" ?>
<quiz>
  <title>XMLマスター</title>
  <description>XMLマスター試験用のテスト問題です。正解が複数ある設問もあります。</description>
  <group name="Basic">
	<question>
		<sentence>SGML仕様を定めている組織を選択してください。</sentence>
		<choice>Comite Consultatif Interbational telegraphique et Telephonique</choice>
		<choice correct="true">International Organigzation for Standardization</choice>
		<choice>The Insutitute of Electrical and Electronics Engineers</choice>
		<choice>World Wide Web Consourtium</choice>
		<comment>電子産業の標準</comment>
	</question>
	<question>
		<sentence>UDDIは何の略ですか？</sentence>
		<choice>uniform data description interface</choice>
		<choice>united data discovery integration</choice>
		<choice correct="true">universal description, discovery and integration</choice>
		<choice>user description, discovery and introduction</choice>
		<comment>XMLに関する略語</comment>
	</question>
	<question>
		<sentence>XMLが派生した仕様を選択してください。</sentence>
		<choice>HTML</choice>
		<choice>DTD</choice>
		<choice>EDI</choice>
		<choice correct="true">SGML</choice>
		<comment>XMLの歴史</comment>
	</question>
	<question>
		<sentence>XML文書に必要なものを選択してください。</sentence>
		<choice>&lt;?xml...?&gt;宣言</choice>
		<choice>スキーマ（例：DTD、XML Scheme）</choice>
		<choice correct="true">XMLインスタンス</choice>
		<choice>なし</choice>
		<comment>XML文書について</comment>
	</question>
	<question>
		<sentence>XML文書の内容を問い合わせるためのW3Cの規格を、選択してください。</sentence>
		<choice>XML DB</choice>
		<choice>XML SQL</choice>
		<choice correct="true">XML Query</choice>
		<choice>XML Select</choice>
		<comment>XML関連の規格</comment>
	</question>
	<question>
		<sentence>W3C勧告でない仕様を選択してください。</sentence>
		<choice>CSS</choice>
		<choice correct="true">SQL</choice>
		<choice>SMIL</choice>
		<choice>XLink</choice>
		<comment>XML関連のW3C勧告</comment>
	</question>
	<question>
		<sentence>仕様書がW3C勧告になるまでの手順を選択してください。</sentence>
		<choice>作業案 → 勧告候補 → 勧告</choice>
		<choice>草案 → 技術ノート → 勧告案 → 勧告</choice>
		<choice>技術ノート → 草案 → 勧告候補 → 勧告</choice>
		<choice correct="true">技術ノート → 草案 → 勧告候補 → 勧告案 → 勧告</choice>
		<comment>W3C仕様への手順</comment>
	</question>
	<question>
		<sentence>HTMLとXMLについて間違っている記述を選択してください。</sentence>
		<choice>XML文書の属性名は、大文字と小文字が区別される。</choice>
		<choice>HTMLは終了タグを省略することができる。</choice>
		<choice>XML文書の要素には、任意の名前の属性を設定することができる。</choice>
		<choice correct="true">妥当HTMLは、DTDを含む。</choice>
		<comment>HTMLとの比較</comment>
	</question>
	<question>
		<sentence>データ変換を行う場合のXML文書ファイルとバイナリファイルについて、正しい記述を選択して下さい。</sentence>
		<choice>XML形式に比べ、バイナリ形式の方が通信速度は速い。</choice>
		<choice correct="true">XML形式に比べ、バイナリ形式の方がデータ量は減少する。</choice>
		<choice>XML形式に比べ、バイナリ形式の方がパケット化し易い。</choice>
		<choice>XML形式に比べ、バイナリ形式の方が対応している通信プロトコルが多い。</choice>
		<comment>バイナリファイルとの比較</comment>
	</question>
	<question>
		<sentence>XMLファイルの名前の付け方について、正しい記述を選択してください。</sentence>
		<choice>XMLファイルの拡張子は「xml」と仕様で定められている。</choice>
		<choice>妥当なXML文書ファイルは、W3Cで定められた拡張子にしなければならない。</choice>
		<choice>XMLファイル名は英数の8文字以内と仕様で定められている。</choice>
		<choice correct="true">XMLファイルの名前の付け方は、XML仕様では記述されていない。</choice>
		<comment>XMLファイルの名前の付け方</comment>
	</question>
	<question>
		<sentence>XML文書の送信について、正しい記述を選択して下さい。</sentence>
		<choice>XML文書は、HTTPまたはHTTPSにしか対応していない。</choice>
		<choice>XML文書をインターネットで送信する場合は、暗号化しなければならない。</choice>
		<choice>XML文書を受信した場合は、検証を行わなければならない。</choice>
		<choice correct="true">XML仕様では、送信についての記述はされていない。</choice>
		<comment>XMLファイルの送信</comment>
	</question>
	<question>
		<sentence>正しいXML宣言を選択してください。</sentence>
		<choice correct="true">&lt;?xml version=&quot;1.0&quot; standalone=&quot;yes&quot;?&gt;</choice>
		<choice>&lt;?xml standalone=&quot;no&quot; version=&quot;1.0&quot;?&gt;</choice>
		<choice>&lt;?xml encoding=&quot;Shift_JIS&quot; version=&quot;1.0&quot;?&gt;</choice>
		<choice>&lt;?xml encoding=&quot;1.0&quot; standalone=&quot;yes&quot;?&gt;</choice>
		<comment>XML宣言</comment>
	</question>
	<question>
		<sentence>standalone文書宣言について、正しい記述を選択してください。</sentence>
		<choice>standalone文書宣言は、ルートノードに記述する。</choice>
		<choice>standalone文書宣言を「no」に設定した場合に、外部参照がないとエラーになる。</choice>
		<choice correct="true">standalone文書宣言を「yes」に設定した場合でも、外部実体を参照することはできる。</choice>
		<choice>standalone文書宣言のデフォルト値は「yes」である。</choice>
		<comment>standalone宣言</comment>
	</question>
	<question>
		<sentence>開始タグ、および終了タグを使った実際の文書を含む部分を選択してください。</sentence>
		<choice>XML宣言部</choice>
		<choice>スキーマ部</choice>
		<choice correct="true">XMLインスタンス部</choice>
		<choice>要素部</choice>
		<comment>構造の定義</comment>
	</question>
	<question>
		<sentence>XML文書にコメントを記入する方法を選択してください。</sentence>
		<choice>CDATAセクションに記入する。</choice>
		<choice>COMMENTタグの内容に記入する。</choice>
		<choice correct="true">&lt;!-- と --&gt;で囲む。</choice>
		<choice>エスケープコードを先頭に入れる。</choice>
		<comment>コメントの記入</comment>
	</question>
	<question>
		<sentence>CDATAセクションの正しい文法を選択してください。</sentence>
		<choice correct="true">&lt;![CDATA[文字列]]&gt;</choice>
		<choice>&lt;#PCDATA(文字列)&gt;</choice>
		<choice>&lt;CDATA&gt;文字列&lt;/CDATA&gt;</choice>
		<choice>&lt;!ELEMENT CDATA(文字列)&gt;</choice>
		<comment>CDATAセクションの記述</comment>
	</question>
	<question>
		<sentence>処理命令について、正しい記述を選択してください。</sentence>
		<choice>処理命令は、XML文書であることを明記するときに使う。</choice>
		<choice>処理命令は、OSコマンドを記述するときに使う。</choice>
		<choice correct="true">処理命令は、XML文書を受け取ったアプリケーションの処理を実行するときに使う。</choice>
		<choice>処理命令は、XML文書にスタイル等の記述を含めるときに使う。</choice>
		<comment>処理命令の記述</comment>
	</question>
	<question>
		<sentence>URLとURIについて、正しい記述を選択してください。</sentence>
		<choice correct="true">単語「URL」は技術資料で使わないように推奨されています。</choice>
		<choice>URLはURIを含みます。</choice>
		<choice>URIは、旧来のURLと名前空間をサブセットとしてもちます。</choice>
		<choice>XMLの仕様書では、単語「URL」が使われています。</choice>
		<comment>処理命令の記述</comment>
	</question>
	<question>
		<sentence>正しくない要素名を選択してください。</sentence>
		<choice correct="true">1月</choice>
		<choice correct="true">コメント:</choice>
		<choice>www.org</choice>
		<choice>月-水</choice>
		<comment>要素名のつけ方</comment>
	</question>
	<question>
		<sentence>要素と属性について、正しい記述を選択してください。</sentence>
		<choice>1つのXMLインスタンス名で同じ名前の要素を使うことはできない。</choice>
		<choice>要素にはデフォルト値を設定できる。</choice>
		<choice correct="true">属性には順位がない。</choice>
		<choice>1つの要素に同じ名前の属性を使うことはできる。</choice>
		<comment>要素と属性の違い</comment>
	</question>
	<question>
		<sentence>正しいタグの記述を選択してください。</sentence>
		<choice>&lt;名前 属性=名前/&gt;</choice>
		<choice correct="true">&lt;名前 名前=&quot;属性&quot;/&gt;</choice>
		<choice>&lt;名前 属性=&#39;名前/&#39;&gt;</choice>
		<choice>&lt;名前 属性/&gt;</choice>
		<comment>属性の記述</comment>
	</question>
	<question>
		<sentence>空要素を記述する方法を選択してください。</sentence>
		<choice>開始タグの要素名を文字「/」で終わる。</choice>
		<choice>開始タグの後に文字「/」を追加する。</choice>
		<choice correct="true">開始タグを文字「&gt;」の代わりに文字列「/&gt;」で閉じる。</choice>
		<choice>終了タグを省略することはできない。</choice>
		<comment>空要素の記述</comment>
	</question>
	<question>
		<sentence>実体について、正しい記述を選択してください。</sentence>
		<choice>内部一般実体は、必ず解析される。</choice>
		<choice>外部の解析実体は、処理命令で始まる。</choice>
		<choice correct="true">パラメータ実体はDTDの中だけで参照される実体である。</choice>
		<choice>一般実体は、XMLインスタンス内で宣言される。</choice>
		<comment>実体の種類。XML文章には解析対象実体と解析対象外実体を含むことができる。</comment>
	</question>
	<question>
		<sentence>正式な団体から提供されている実体を参照する宣言の記述について、正しいものを選択してください。</sentence>
		<choice correct="true">識別子をPUBLICに設定して、URIの頭文字を+にする。</choice>
		<choice>識別子をSYSTEMに設定して、URIの頭文字を+にする。</choice>
		<choice>識別子をPUBLICに設定して、URIの頭文字を-にする。</choice>
		<choice>識別子をSYSTEMに設定して、URIの頭文字を-にする。</choice>
		<comment> ENTITY宣言</comment>
	</question>
	<question>
		<sentence>整形式(well-formed)XML文書について、正しい記述を選択してください。</sentence>
		<choice correct="true">整形式XML文書は、開始タグに対して終了タグがある。</choice>
		<choice>整形式XML文書は、正規化されている。</choice>
		<choice>整形式XML文書は、外部ファイルを参照しない。</choice>
		<choice>整形式XML文書は、DTDがある。</choice>
		<comment>整形式XML文書の条件</comment>
	</question>
	<question>
		<sentence>妥当な(valid)なXML文書について、間違っている記述を選択してください。</sentence>
		<choice correct="true">妥当なXML文書は、必ずXML宣言がある。</choice>
		<choice>妥当なXML文書のすべての要素は、DTDで宣言されている。</choice>
		<choice>妥当なXML文書のすべての属性は、DTDで宣言されている。</choice>
		<choice>妥当なXML文書は、開始タグに対して終了タグがある。</choice>
		<comment>妥当なXML文書を条件</comment>
	</question>
	<question>
		<sentence>整形式(well-formed)XML文書であり、妥当(valid)なXML文書ではない文書を選択してください。</sentence>
		<choice>&lt;?xml version=&quot;1.0&quot;?&gt;
			&lt;会社&gt;&lt;部&gt;&lt;/会社&gt;</choice>
		<choice correct="true">&lt;?xml version=&quot;1.0&quot;?&gt;
			&lt;会社/&gt;</choice>
		<choice>&lt;?xml version=&quot;1.0&quot;?&gt;
			&lt;!DOCTYPE 会社[
			&lt;!ELEMENT 会社(#PCDATA)&gt;
			]&gt;
			&lt;会社&gt;&lt;/会社&gt;</choice>
		<choice>&lt;?xml version=&quot;1.0&quot;?&gt;
			&lt;!DOCTYPE 会社[
			&lt;!ELEMENT 会社(#PCDATA)&gt;
			]&gt;
			&lt;会社&gt;&lt;部&gt;&lt;/会社&gt;</choice>
		<comment>妥当なXML文書と整形式XML文書</comment>
	</question>
	<question>
		<sentence>XMLプロセッサについて、正しい記述を選択してください。</sentence>
		<choice>検証(validating)XMLプロセッサは、Java言語に対応している。</choice>
		<choice correct="true">検証(validating)XMLプロセッサは、DTDを参照する。</choice>
		<choice>非検証(non-validating)XMLプロセッサは、XML Schemaを参照する。</choice>
		<choice>非検証(non-validating)XMLプロセッサは、内部実体を展開しない。</choice>
		<comment>XMLプロセッサ</comment>
	</question>
	<question>
		<sentence>XML文書の文字エンコーディングについて、正しいものを選択してください。</sentence>
		<choice>エンコーディングの指定が省略された場合は、シフトJISエンコーディングする。</choice>
		<choice correct="true">Byte Order Markは、XML文書ファイルの文字セットを指定する。</choice>
		<choice>キーボードにキーがない文字は、XML文書に記述できない。</choice>
		<choice>&amp;#で始まる文字列は、UTF32のコードとして扱われる。</choice>
		<comment>UTF-8のBOM : EF BB BF
		UTF-16のBOM : FF FE
		&lt;要素名 xml:lang=&quot;言語コード&quot;&gt;</comment>
	</question>
	<question>
		<sentence>シフトJISとEUCエンコーディングを混在させて、1つのXML文書ファイルで使用する方法を選択してください。</sentence>
		<choice>要素にencoding属性を設定する。</choice>
		<choice>要素にlang属性を設定する。</choice>
		<choice>開始タグの前に、特殊文字(byte order mark)を挿入する。</choice>
		<choice correct="true">1つのXML文書ファイルで、シフトJISとEUCエンコーディングを使うことはできない。</choice>
		<comment>多言語文書の作成</comment>
	</question>
	<question>
		<sentence>UTF-8について、正しい記述を選択してください。</sentence>
		<choice correct="true">UTF-8はUniversal Multiple-Octet Coded Character Set Transformation Formatの略である。</choice>
		<choice>UTF-8およびUTF-16は、UCS-2とUCS-4の全ての文字を表現する。</choice>
		<choice>UTF-8は、8バイト文字で文字を表現する。</choice>
		<choice>ISO/IEC 10646は、UTF-8である。</choice>
		<comment>UTFはUnicodeとは別の文字セットです。UTFはISO/IECで規定されています。
		　ISO 10646は、UCS-2とUCS-4という文字セットであり、その改正条項でUTF-7、UTF-8、UTF-16の文字エンコーディング方式を定めています。UTF-8はUCS-2とUCS-4の全てに対応し、UTF-16はUCS-2とUCS-4の一部に対応しています。
		　UTF-8は8bitの可変長で1文字を1byteから6byteで表します。UTF-16は、Unicodeと互換性をもつ1文字が16bitです。</comment>
	</question>
	<question>
		<sentence>XML勧告で予約されている実体参照を参照してください。</sentence>
		<choice>&amp;minus;</choice>
		<choice correct="true">&amp;lt;</choice>
		<choice>&amp;yen;</choice>
		<choice correct="true">&amp;quot;</choice>
		<comment>XML文書に、直接ISO/IEC 10646文字コードを記述する際に、頻繁に使われる文字コードは、実体宣言してXMLインスタンス内から参照することができます。
		　&lt;!ENTITY jin &quot;&amp;#x4EC1;&quot;&gt; と宣言したとすると、&lt;要素&gt; &amp;jin; &lt;/要素&gt; のように利用します。
		　&amp;lt; = &lt;、 &amp;gt; = &gt;、 &amp;quot; = &quot;、 &amp;apos; = &#39;、 &amp;amp; = &amp; は予約実体です。</comment>
	</question>
	<question>
		<sentence>XML文書の正規化(canonicalication)について、正しい記述を選択してください。</sentence>
		<choice>Canonical XMLはW3C勧告ではない。</choice>
		<choice>Canonical XML文書内の空要素は、終了タグを省略した形式で表す。</choice>
		<choice correct="true">Canonical XMLの文字エンコーディングはUTF-8である。</choice>
		<choice>XML文書を正規化すると、全ての空白は省略される。</choice>
		<comment>Canonical XMLとは、内容が論理的に同じであるか比較する場合に、物理形式を一定の決められた形に変換する規格です。その条件は、
		・文書のエンコーディングはUTF-8です。
		・改行は1つの0xAに置き換えます。
		・空要素は、開始タグと終了タグとして記述します。
		・XML宣言とDTDは削除します。
		・要素の内容の空白は保治されます。
		・属正のデフォルト値は要素に、明示的に追加されます。</comment>
	</question>
	<question>
		<sentence>DTDについて、正しい記述を選択してください。</sentence>
		<choice correct="true">DTDの先頭行は、DOCTYPE宣言である。</choice>
		<choice>DTDは、XMLインスタンスの後に記述することができる。</choice>
		<choice>DTD宣言句は小文字で記述することができる。</choice>
		<choice>DTD宣言内にコメントを記述することはできない。</choice>
		<comment>DTDの基礎</comment>
	</question>
	<question>
		<sentence>XMLインスタンスと別ファイルで定義した、独自のDTDを追加する記述を選択してください。</sentence>
		<choice>&lt;!DOCTYPE ルート要素名 PRIVATE &quot;外部DTDファイル名&quot;&gt;</choice>
		<choice>&lt;!DTD ルート要素名 &quot;外部DTDファイル名&quot;&gt;</choice>
		<choice>&lt;!DOCTYPE ルート要素名 &quot;外部DTDファイル名&quot;&gt;</choice>
		<choice correct="true">&lt;!DOCTYPE ルート要素名 SYSTEM &quot;外部DTDファイル名&quot;&gt;</choice>
		<comment>外部DTDの宣言</comment>
	</question>
	<question>
		<sentence>下記の「DTD宣言」において、妥当(valid)なXML文書を選択してください。
		　　&lt;!DOCTYPE a [
		　　&lt;ELEMENT a (b,d)&gt;
		　　&lt;ELEMENT b (c)&gt;
		　　&lt;ELEMENT c (#PCDATA)&gt;
		　　&lt;ELEMENT d (#PCDATA)&gt;
		　　]&gt;</sentence>
		<choice>&lt;a&gt; &lt;c/&gt; &lt;b/&gt; &lt;/a&gt;</choice>
		<choice correct="true">&lt;a&gt; &lt;b&gt; &lt;c/&gt; &lt;/b&gt; &lt;d/&gt; &lt;/a&gt;</choice>
		<choice>&lt;a&gt; &lt;c/&gt; &lt;/a&gt;</choice>
		<choice>&lt;a/&gt;</choice>
		<comment>要素の宣言 その１</comment>
	</question>
	<question>
		<sentence>下記の「DTD宣言」において、妥当(valid)なXML文書を選択してください。
&lt;?xml version=&quot;1.0&quot; encoding=&quot;Shift_JIS&quot;?&gt;
&lt;!DOCTYPE product [
&lt;!ELEMENT product (productName)&gt;
&lt;!ATTLIST product color CDATA #IMPLIED size NMTOKEN #FIXED &quot;100&quot;&gt; 
&lt;!ELEMENT productName (#PCDATA)&gt;
&lt;!ATTLIST productName pcode ID #REQUIRED&gt; 
]&gt;</sentence>
		<choice>&lt;product color=&quot;green&quot; size=&quot;100&quot;&gt;
  &lt;productName/&gt;
&lt;/product&gt;</choice>
		<choice correct="true">&lt;product&gt;
  &lt;productName pcode=&quot;R513&quot;/&gt;
&lt;/product&gt;</choice>
		<choice>&lt;product&gt;
  &lt;productName pcode=&quot;899AD1&quot;/&gt;
&lt;/product&gt;</choice>
		<choice>&lt;product size=&quot;200&quot;&gt;
  &lt;productName pcode=&quot;t509&quot;/&gt;
&lt;/product&gt;</choice>
		<comment>属性において#FIXEDは固定値で、属性が省略されたときは既定値を自動的に追加します。#IMPLIEDは省略可能、#REQUIREDは必須の指定です。ID型は先頭に数字を指定できません。</comment>
	</question>
	<question>
		<sentence>下記の「XMLインスタンス」に対応するDTDを選択してください。
		　　&lt;マスター&gt;
		　　　&lt;章&gt;
		　　　　&lt;基礎/&gt;
		　　　&lt;/章&gt;
		　　&lt;/マスター&gt;</sentence>
		<choice>&lt;!DOCTYPE マスター [
			&lt;!ELEMENT マスター(章)&gt;
			&lt;!ELEMENT 章(基礎(#PCDATA))&gt;
			]&gt;</choice>
		<choice>&lt;!DOCTYPE XML マスター [
			&lt;!ELEMENT マスター(章(基礎(基礎)))&gt;
			]&gt;</choice>
		<choice>&lt;!DOCTYPE マスター [
			&lt;!ELEMENT マスター(章)&gt;
			&lt;!ELEMENT 章(基礎)&gt;
			&lt;!ELEMENT 基礎(#PCDATA)&gt;
			&lt;!ELEMENT 章(基礎)&gt;
			&lt;!ELEMENT マスター(章)&gt;
			]&gt;</choice>
		<choice correct="true">&lt;!DOCTYPE マスター [
			&lt;!ELEMENT XML マスター(章)&gt;
			&lt;!ELEMENT 章(基礎)&gt;
			&lt;!ELEMENT 基礎(#PCDATA)&gt;
			]&gt;</choice>
		<comment>要素の宣言 その２</comment>
	</question>
	<question>
		<sentence>DTDの要素型宣言について、正しい記述を選択してください。</sentence>
		<choice>&lt;!ELEMENT a(!b)&gt;
			要素「a」は要素「b」を子要素として含まない。</choice>
		<choice>&lt;!ELEMENT a(b|c)&gt;
			要素「a」は要素「b」と要素「c」の両要素を子要素として含む。</choice>
		<choice>&lt;!ELEMENT a(a?,b)&gt;
			要素「a」は要素「a」または要素「b」を子要素として含む。</choice>
		<choice correct="true">&lt;!ELEMENT a(b,c)?&gt;
			要素「a」は要素「b」と要素「c」の両要素を0,もしくは1回、子要素として含むことができる。</choice>
		<comment>条件の指定。
		　要素の出現回数は「? … 0もしくは1回出現」「+ … 1回以上出現」「* … 0回以上出現」「指定なし … 1回出現」
		　子要素の組み合わせ規制は「, … 順番に出現」「| … リスト内のいずれか1つが出現」</comment>
	</question>
	<question>
		<sentence>要素「a」を空要素として宣言するDTDの記述を選択してください。</sentence>
		<choice>&lt;!EMPTY a&gt;</choice>
		<choice correct="true">&lt;!ELEMENT a EMPTY&gt;</choice>
		<choice>&lt;!ELEMENT a(?)&gt;</choice>
		<choice>&lt;!ELEMENT a(*)&gt;</choice>
		<comment>内容モデルでは、要素に設定できる内容を「要素」と「要素集」のほかに、「何も設定できない指定 = EMPTY」と「何でも設定できる指定 = ANY」があります。これらは出現する要素の内容を規制します。</comment>
	</question>
	<question>
		<sentence>下記の「XMLインスタンス」に対応するDTDを選択してください。
			&lt;注文&gt; &lt;製品名&gt;鉛筆&lt;/製品名&gt;を&lt;数量&gt;1&lt;/数量&gt;&lt;単位&gt;本&lt;単位&gt; &lt;/注文&gt;</sentence>
		<choice correct="true">&lt;!DOCTYPE 注文 [
			&lt;!ELEMENT 注文(#PCDATA|製品名|数量|単位)*&gt;
			&lt;!ELEMENT 製品名(#PCDATA)&gt;
			&lt;!ELEMENT 数量(#PCDATA)&gt;
			&lt;!ELEMENT 単位(#PCDATA)&gt;
			]&amp;gt;</choice>
		<choice>&lt;!DOCTYPE 注文 [
			&lt;!ELEMENT 注文(製品名|#PCDATA|数量|単位)&gt;
			&lt;!ELEMENT 製品名(#PCDATA)&gt;
			&lt;!ELEMENT 数量(#PCDATA)&gt;
			&lt;!ELEMENT 単位(#PCDATA)&gt;
			]&gt;</choice>
		<choice>&lt;!DOCTYPE 注文 [
			&lt;!ELEMENT 注文(#PCDATA|製品名,数量,単位)*&gt;
			&lt;!ELEMENT 製品名(#PCDATA)&gt;
			&lt;!ELEMENT 数量(#PCDATA)&gt;
			&lt;!ELEMENT 単位(#PCDATA)&gt;
			]&gt;</choice>
		<choice>&lt;!DOCTYPE 注文 [
			&lt;!ELEMENT 注文(製品名,#PCDATA,数量,単位,#PCDATA)&gt;
			&lt;!ELEMENT 製品名(#PCDATA)&gt;
			&lt;!ELEMENT 数量(#PCDATA)&gt;
			&lt;!ELEMENT 単位(#PCDATA)&gt;
			]&gt;</choice>
		<comment>混合内容の定義
		　#PCDATAは、必ずリストの先頭に指定します。</comment>
	</question>
	<question>
		<sentence>下記の「XMLインスタンス」に対応するDTDを選択してください。
			&lt;a d=&quot;1&quot; c=&quot;2&quot;/&gt;</sentence>
		<choice>&lt;!DOCTYPE a[
			&lt;!ELEMENT a(#PCDATA)&gt;
			&lt;!ATTLIST a d,c CDATA #IMPLIED&gt;
			]&gt;</choice>
		<choice>&lt;!DOCTYPE a[
			&lt;!ELEMENT a(#PCDATA)&gt;
			&lt;!ATTLIST a(d,c) CDATA #IMPLIED&gt;
			]&gt;</choice>
		<choice correct="true">&lt;!DOCTYPE a[
			&lt;!ELEMENT a(#PCDATA)&gt;
			&lt;!ATTLIST a c CDATA #IMPLIED
			　　　　　　　 d CDATA #IMPLIED&gt;
			]&gt;</choice>
		<choice>&lt;!DOCTYPE a[
			&lt;!ELEMENT a(#PCDATA)&gt;
			&lt;!ATTLIST a(c,d)* CDATA #IMPLIED&gt;
			]&gt;</choice>
		<comment>属性宣言を1つのATTLISTにまとめる場合でも、属性ごとに属性名、属性値の候補、デフォルト値を指定しなければなりません。</comment>
	</question>
	<question>
		<sentence>DTDで属性の型として宣言できるものを選択してください。</sentence>
		<choice>CHAR</choice>
		<choice correct="true">ENTITIES</choice>
		<choice correct="true">ID</choice>
		<choice>TEXT</choice>
		<comment>属性値の候補の代わりに、データ型を指定できます。CDATA(任意の文字列)、ENTITY(実体参照)、ENTITIES(複数の実体参照)、ID(識別子)、IDREF(識別子の参照)、IDREFS(複数の識別子の参照)、NMTOKEN(名前トークン)、NMTOKENS(複数の名前トークン)</comment>
	</question>
	<question>
		<sentence>デフォルト値を固定に設定した記述を選択してください。</sentence>
		<choice>&lt;!ATTLIST 要素 属性 CDATA #CONSTANT &quot;値&quot;&gt;</choice>
		<choice correct="true">&lt;!ATTLIST 要素 属性 CDATA #FIXED &quot;値&quot;&gt;</choice>
		<choice>&lt;!ATTLIST 要素 属性 CDATA #IMPLIED &quot;値&quot;&gt;</choice>
		<choice>&lt;!ATTLIST 要素 属性 CDATA #REQUIRED &quot;値&quot;&gt;</choice>
		<comment>デフォルト値の設定には、下記の種類がある。
		「#FIXED &quot;文字列&quot;」「#IMPLIED」「#REQUIRED」「&quot;文字列&quot;」</comment>
	</question>
	<question>
		<sentence>外部実体について、正しい記述を選択してください。</sentence>
		<choice>外部実体は、XML文書でなければならない。</choice>
		<choice>解析される外部実体は、NOTATION宣言を含む。</choice>
		<choice correct="true">XMLインスタンスでの解析対象の外部文字実体の参照形式は、内部実体の参照形式と同じである。</choice>
		<choice>1つのXML文書で使用される外部実体は、全て同じ文字エンコーディングで記述されていなければならない。</choice>
		<comment>外部実体の記述</comment>
	</question>
	<question>
		<sentence>画像データをXML文書に設定するために、使用するDTD宣言を選択してください。</sentence>
		<choice correct="true">ENTITY</choice>
		<choice>BINARY</choice>
		<choice>CDATA</choice>
		<choice>GRAPHICS</choice>
		<comment>バイナリデータをXML文書に設定する場合は、ENTITYとNOTATIONを宣言します。
		　&lt;xml version=&quot;1.0&quot;?&gt;
		　&lt;!DOCTYPE ルート[
		　&lt;!ELEMENT ルート(#PCDATA)&gt;
		　&lt;!ATTLIST ルート 画像 ENTITY #IMPLIED&gt;
		　&lt;!NOTATION BMP SYSTEM &quot;http://www.osawa.co.jp/viewer.exe&quot;&gt;
		　&lt;!ENTITY 写真 SYSTEM &quot;photo.bmp&quot; NDATA BMP&gt;
		　]&gt;
		&lt;ルート 画像=&quot;写真&quot;/&gt;</comment>
	</question>
	<question>
		<sentence>2001年5月2日にW3C勧告となったXML Schema仕様の内、構造を定義しているPart(パート)の番号を選択してください。</sentence>
		<choice>0</choice>
		<choice correct="true">1</choice>
		<choice>2</choice>
		<choice>3</choice>
		<comment>XML Schema Part 0 入門書
XML Schema Part 1 XML Schemaの構造
XML Schema Part 2 XML Schemaのデータ型</comment>
	</question>
	<question>
		<sentence>XML Schema仕様で定義されている名前空間URIを選択してください。</sentence>
		<choice>http://www.w3c.org/2001/XMLSchema-datatype</choice>
		<choice correct="true">http://www.w3c.org/2001/XMLSchema</choice>
		<choice correct="true">http://www.w3c.org/2001/XMLSchema-instance</choice>
		<choice>http://www.w3c.org/2001/XMLSchema-structure</choice>
		<comment>XML Schema名前空間のURIは、http://www.w3c.org/2001/XMLSchema、http://www.w3c.org/2001/XMLSchema-instance、http://www.w3c.org/2001/XMLSchema-datatypes があります。</comment>
	</question>
	<question>
		<sentence>XML Schemaの制定にあたり、DTDの課題としてあげられたものを選択してください、</sentence>
		<choice>DTDは、まだW3Cの勧告候補である。</choice>
		<choice correct="true">DTDは、名前空間の規定に対応できない。</choice>
		<choice>DTDは、XMLインスタンスに記述しなければならない。</choice>
		<choice>DTDは、UTF-8エンコーディングで記述しなければならない。</choice>
		<comment>さらに、DTDは、要素や属性の有無を定義することはできますが、内容のデータ型を宣言することはできません。</comment>
	</question>
	<question>
		<sentence>XML Schemaで使用できるデータ型を選択してください。</sentence>
		<choice correct="true">id</choice>
		<choice>#PCDATA</choice>
		<choice>i2</choice>
		<choice>number</choice>
		<comment>データ型は属性 type で指定します。duration、date、gYear、boolean、int、anyURI、string、token、language、ENTITY等があります。</comment>
	</question>
	<question>
		<sentence>XML Schemaで日付、時間を表すために使用できるデータ型を選択してください。</sentence>
		<choice>minute</choice>
		<choice correct="true">time</choice>
		<choice correct="true">gMonthDay</choice>
		<choice>timeDate</choice>
		<comment>XML Schemaは9つの日付。時間型に対応しています。時刻を表すのは、time、dateTime、durationです。</comment>
	</question>
	<question>
		<sentence>XML Schemaで、要素の内容を10以上に制限する指定を選択してください。</sentence>
		<choice correct="true">minInclusive</choice>
		<choice>minExclusive</choice>
		<choice>greaterThan</choice>
		<choice>maxExclusive</choice>
		<comment>ユーザ定義型について</comment>
	</question>
	<question>
		<sentence>XML Schemaで定義されている要素が、決められた手順で出現しなければならないことを指定する複合型の要素名を選択してください。</sentence>
		<choice correct="true">sequence</choice>
		<choice>order</choice>
		<choice>all</choice>
		<choice>sort</choice>
		<comment>all … 0回 or 1回。 choice … 定義されている中の1つ。sequence … 定義されているすべての要素が定義されている順番で出現する。</comment>
	</question>
	<question>
		<sentence>XML Schemaで、内容の文字列の長さを4文字に制限する指定を選択してください。</sentence>
		<choice>minLengthとmaxLength</choice>
		<choice>stringLen</choice>
		<choice correct="true">length</choice>
		<choice>count</choice>
		<comment>内容の文字列の長さを制限するには、minLengthとmaxLength、length要素が利用可能である。
		　&lt;xsd:element name=&quot;名前&quot;&gt;
		　　&lt;xsd:simpleType&gt;
		　　　&lt;xsd:restriction base=&quot;xsd:string&quot;&gt;
		　　　　&lt;xsd:minLength value=&quot;1&quot;/&gt;
		　　　　&lt;xsd:maxLength value=&quot;25&quot;/&gt;
		　　　&lt;/xsd:restriction&gt;
		　　&lt;/xsd:simpleType&gt;
		　&lt;/xsd:element&gt;</comment>
	</question>
	<question>
		<sentence>XML Schemaで、要素が最低3回出現する記述を選択してください。</sentence>
		<choice>count</choice>
		<choice>occurs</choice>
		<choice correct="true">minOccurs</choice>
		<choice>appears</choice>
		<comment>例えば、要素「注文番号」が最小最大1回出現するように定義するには、 &lt;xsd:element name=&quot;注文番号&quot; type=&quot;xsd:string&quot; minOccurs=&quot;1&quot; maxOccurs=&quot;1&quot;&gt; とする。</comment>
	</question>
	<question>
		<sentence>XML Schemaで、属性にデフォルト値を設定するattribute要素の属性名を選択してください。</sentence>
		<choice correct="true">default</choice>
		<choice>type</choice>
		<choice>value</choice>
		<choice>use</choice>
		<comment>要素に属性を定義するには、属性定義&lt;xsd:attribute …&gt;を行います。
		　&lt;xsd:attribute&gt;
		　　name = 属性名
		　　type = データ型
		　　use = &quot;optional&quot; | &quot;prohibited&quot; | &quot;required&quot;
		　　default = デフォルト値
		　　fixed = 固定文字列
		　　form = &quot;qualified&quot; | &quot;unqualofied&quot;
		　　id = 識別子
		　　ref = QName
		　&lt;/xsd:attribute&gt;</comment>
	</question>
	<question>
		<sentence>XPath仕様の説明として、正しいものを選択してください。</sentence>
		<choice>XPathは、文書をDOMと介して操作する。</choice>
		<choice correct="true">XPathは、XSLTとXPointerの共通機能で同じ文法と意味をもたらすことを目的として作成された。</choice>
		<choice>XPathは、名前空間に対応していない。</choice>
		<choice correct="true">XPathは、XMLのノードを指定するための関数を定義している。</choice>
		<comment>XPathで用いる抽象的な木構造は、DOMとは異なり、属性ノードの親は要素となる。XPathは属性のデフォルト値を検索することもできる。</comment>
	</question>
	<question>
		<sentence>「XML文書A」から、要素「赤鉛筆」を選択する「XSLTスタイルシートB」の[ 1 ]に当てはまる最適な記述を選択してください。
			　「XML文書A」
			　&lt;?xml version=&quot;1.0&quot;?&gt;
			　　&lt;書き物&gt;
			　　　&lt;鉛筆&gt;
			　　　　&lt;赤鉛筆&gt;赤鉛筆&lt;/赤鉛筆&gt;
			　　　&lt;/鉛筆&gt;
			　　&lt;/書き物&gt;
			　「XSLTスタイルシートB」
			　&lt;xsl:stylesheet version=&quot;1.0&quot; xmlns:xsl=&quot;http://www.w3.org/1999/XSL/Transform&quot;&gt;
			　　&lt;xsl:templete match=&quot;/&quot;&gt;
			　　　&lt;xsl:apply-templetes select=&quot;書き物&quot;/&gt;
			　　&lt;/xsl:templete&gt;
			　　　　　…
			　　&lt;xsl:templete match=&quot;鉛筆&quot;&gt;
			　　　&lt;xsl:value-of select=&quot;[ 1 ]&quot;/&gt;
			　　&lt;/xsl:templete&gt;
			　&lt;/xsl:stylesheet&gt;</sentence>
		<choice correct="true">赤鉛筆</choice>
		<choice>//赤鉛筆</choice>
		<choice>../赤鉛筆</choice>
		<choice>書き物/鉛筆/赤鉛筆</choice>
		<comment>XPathには、正式の書き方と簡略式があります。</comment>
	</question>
	<question>
		<sentence>「XML文書A」から、要素の内容が「3月」を表示する「XSLTスタイルシートB」の[ 1 ]に当てはまる記述を選択してください。
			　「XML文書A」
			　&lt;?xml version=&quot;1.0&quot;?&gt;
			　&lt;年&gt;
			　　&lt;月&gt;1月&lt;/月&gt;
			　　&lt;月&gt;2月&lt;/月&gt;
			　　&lt;月&gt;3月&lt;/月&gt;
			　　&lt;月&gt;4月&lt;/月&gt;
			　&lt;/年&gt;
			　「XSLTスタイルシートB」
			　&lt;xsl:stylesheet version=&quot;1.0&quot; xmlns:xsl=&quot;http://www.w3.org/1999/XSL/Transform&quot;&gt;
			　&lt;xsl:templete match=&quot;/&quot;&gt;
			　　&lt;html&gt;
			　　　&lt;xsl:apply-templetes select=&quot;[ 1 ]&quot;/&gt;
			　　&lt;/html&gt;
			　&lt;/xsl:templete&gt;
			　&lt;xsl:templete match=&quot;*&quot;&gt;
			　　&lt;xsl:value-of select=&quot;.&quot;/&gt;
			　&lt;/xsl:templete&gt;
			　&lt;/xsl:stylesheet&gt;</sentence>
		<choice>年/月[2]</choice>
		<choice correct="true">年/月[3]</choice>
		<choice>年/月['3月']</choice>
		<choice>年/[月='3月']</choice>
		<comment>集合ノードの、最初のノードの位置は1です。</comment>
	</question>
	<question>
		<sentence>ノードではないものを選択してください。</sentence>
		<choice>処理命令</choice>
		<choice correct="true">文書</choice>
		<choice>名前空間</choice>
		<choice>要素</choice>
		<comment>ノードに分類されるのは､ルート､要素、属性､テキスト、名前空間、処理命令、コメントです。</comment>
	</question>
    <question>
    	<sentence>次の条件の「XML Schema文書」において[　(1)　]に当てはまる正しい記述を選択してください。

「XML Schema文書」
&lt;?xml version=&quot;1.0&quot; encoding=&quot;Shift_JIS&quot; ?&gt;
&lt;xs:schema xmlns:xs=&quot;http://www.w3.org/2001/XMLSchema&quot;
    xmlns:toac=&quot;http://www.toshiba-toac.co.jp/edu&quot;
    targetNamespace=&quot;http://www.toshiba-toac.co.jp/edu&quot;&gt;
        [ 　 (1) 　 ]
&lt;/xs:schema&gt;

「条件」
要素「root」を定義します｡要素「root」はその子要素として1回以上出現する要素「data」を含みます。</sentence>
    	<choice>&lt;xs:element name=&quot;root&quot;&gt;
  &lt;xs:complexType&gt;
    &lt;xs:sequence&gt;
      &lt;xs:element ref=&quot;toac:data&quot;/&gt;
    &lt;/xs:sequence&gt;
  &lt;/xs:complexType&gt;
&lt;/xs:element&gt;
&lt;xs:element name=&quot;data&quot; type=&quot;xs:string&quot; /&gt;</choice>
    	<choice>&lt;xs:element name=&quot;root&quot;&gt;
  &lt;xs:sequence&gt;
    &lt;xs:element ref=&quot;toac:data&quot; maxOccurs=&quot;unbounded&quot;/&gt;
  &lt;/xs:sequence&gt;
&lt;/xs:element&gt;
&lt;xs:element name=&quot;data&quot; type=&quot;xs:string&quot; /&gt;</choice>
    	<choice>&lt;xs:element name=&quot;root&quot;&gt;
  &lt;xs:complexType&gt;
    &lt;xs:element ref=&quot;toac:data&quot; maxOccurs=&quot;unbounded&quot;/&gt;
  &lt;/xs:complexType&gt;
&lt;/xs:element&gt;
&lt;xs:element name=&quot;data&quot; type=&quot;xs:string&quot; /&gt;</choice>
    	<choice correct="true">&lt;xs:element name=&quot;root&quot;&gt;
  &lt;xs:complexType&gt;
    &lt;xs:sequence&gt;
      &lt;xs:element ref=&quot;toac:data&quot; maxOccurs=&quot;unbounded&quot;/&gt;
    &lt;/xs:sequence&gt;
  &lt;/xs:complexType&gt;
&lt;/xs:element&gt;
&lt;xs:element name=&quot;data&quot; type=&quot;xs:string&quot; /&gt;</choice>
    	<comment>要素が子要素を内容に含む場合はcomplexType要素で定義します｡
要素が1つの場合もsequenceやchoice、allなどの要素でモデルグループを指定します｡
要素の出現回数が無制限の場合はmaxOccures属性でunboundedを指定します｡</comment>
    </question>
    <question>
    	<sentence>XML 1.0の仕様として正しいものを選択してください。</sentence>
    	<choice>XMLプロセッサは文字符号化方式としてShift_JISを処理できなければならない</choice>
    	<choice>名前空間はxmlnsという属性で宣言する</choice>
    	<choice correct="true">名前文字として「:」(コロン)を使うことができる</choice>
    	<choice>属性の正規化ではすべての改行は#xAに置き換える</choice>
    	<comment>XMLプロセッサは文字符号化方式としてUTF-8またはUTF-16を処理できなくてはならないと決められていますが、Shift_JISの処理は必須ではありません。
XML 1.0の仕様と名前空間は別々の仕様です。
XML 1.0の仕様として名前に「:」を使うことができます。
属性の正規化ではすべての改行は#x20に置き換えます。</comment>
    </question>
    <question>
    	<sentence>次の説明において正しいものを選択してください｡</sentence>
    	<choice>外部実体は必ずXML文書である</choice>
    	<choice>内部実体と外部実体は実体参照の書き方が異なる</choice>
    	<choice>パラメータ実体は文書本体の処理命令で実体参照を行う</choice>
    	<choice correct="true">解析対象外実体を参照するときはENTITY型の属性値で指定する</choice>
    	<comment>外部実体には解析対象実体と解析対象外実体とがあり､XML文書であるとは限りません｡
実体を参照するとき、内部実体と外部実体においてその参照の仕方に違いはありません｡
パラメータ実体はDTDの中で利用する実体です。</comment>
    </question>
    <question>
    	<sentence>整形式XML文書では省略可能だが、妥当なXML文書では省略できないものを選択してください。</sentence>
    	<choice>XML宣言</choice>
    	<choice correct="true">文書型宣言</choice>
    	<choice>XML文書本体</choice>
    	<choice>処理命令</choice>
    	<comment>整形式XML文書では、XML宣言と文書型宣言は省略可能です。
妥当なXML文書では、XML宣言は省略できますが、文書型宣言は省略できません。</comment>
    </question>
    <question>
    	<sentence>固有の名前でテンプレートを呼び出す命令を選択してください｡</sentence>
    	<choice>xsl:call</choice>
    	<choice correct="true">xsl:call-template</choice>
    	<choice>xsl:apply-templates</choice>
    	<choice>xsl:import</choice>
    	<comment>xsl:apply-templates命令はマッチするパターンのテンプレートを呼び出します｡
xsl:import命令はスタイルシートを取り込むための命令です。</comment>
    </question>
    <question>
    	<sentence>XML Schemaにないデータ型を選んでください。</sentence>
    	<choice>xs:nonNegativeInteger</choice>
    	<choice correct="true">xs:unsignedInteger</choice>
    	<choice>xs:unsignedInt</choice>
    	<choice>xs:positiveInteger</choice>
    	<comment>xs:nonNegativeIntegerは0を含む正の整数です。
xs:unsignedIntは32ビットで表せる符号なし整数です。
xs:positiveIntegerは正の整数です。</comment>
    </question>
    <question>
    	<sentence>次の中から、W3Cによる仕様策定において正式な仕様として確定した文書を選択してください。</sentence>
    	<choice>技術ノート</choice>
    	<choice>標準仕様</choice>
    	<choice correct="true">勧告</choice>
    	<choice>最終草案</choice>
    	<comment>W3Cでは標準仕様という文書はありません。技術ノート、草案(最終草案)、勧告候補、勧告案を経て勧告になります。 </comment>
    </question>
    <question>
    	<sentence>要素aに文字列を属性値とする属性valueの宣言の正しい記述を選択してください。</sentence>
    	<choice>&lt;!ATTLIST a value PCDATA&gt;</choice>
    	<choice correct="true">&lt;!ATTLIST a value CDATA&gt;</choice>
    	<choice>&lt;!ATTRIBUTE a value CDATA&gt;</choice>
    	<choice>&lt;!ATTRIBUTE a value PCDATA&gt;</choice>
    	<comment>属性リストの宣言は次のようになっています。
&lt;!ATTLIST 要素名 属性名 データ型&gt;
文字列をデータ型とするには「CDATA」を指定します。</comment>
    </question>
    <question>
    	<sentence>要素aを空要素としたい。次のXML Schema文書のうち正しいものを選択してください。</sentence>
    	<choice correct="true">&lt;xs:schema xmlns:xs=&quot;http://www.w3.org/2001/XMLSchema&quot;&gt;
  &lt;xs:element name=&quot;a&quot; type=&quot;emp&quot;/&gt;
  &lt;xs:complexType name=&quot;emp&quot;/&gt;
&lt;/xs:schema&gt;</choice>
    	<choice>&lt;xs:schema xmlns:xs=&quot;http://www.w3.org/2001/XMLSchema&quot;&gt;
  &lt;xs:element name=&quot;a&quot; /&gt;
&lt;/xs:schema&gt;</choice>
    	<choice>&lt;xs:schema xmlns:xs=&quot;http://www.w3.org/2001/XMLSchema&quot;&gt;
  &lt;xs:element name=&quot;a&quot; EMPTY/&gt;
&lt;/xs:schema&gt;</choice>
    	<choice>&lt;xs:schema xmlns:xs=&quot;http://www.w3.org/2001/XMLSchema&quot;&gt;
  &lt;xs:element name=&quot;a&quot; type=&quot;emp&quot;/&gt;
  &lt;xs:simpleType name=&quot;emp&quot;&gt;
    &lt;xs:restriction base=&quot;xs:string&quot;&gt;
      &lt;xs:length value=&quot;empty&quot;/&gt;
    &lt;/xs:restriction&gt;
  &lt;/xs:simpleType&gt;
&lt;/xs:schema&gt;</choice>
    	<comment>XML Schemaでは、complexTypeの内容モデルを定義しないことで空要素の型を宣言できます。 </comment>
    </question>
    <question>
    	<sentence>次のDTDに妥当なXML文書を選択してください。
&lt;?xml version=&quot;1.0&quot; encoding=&quot;Shift_JIS&quot;?&gt;
&lt;!DOCTYPE product [
&lt;!ELEMENT product (productName)&gt;
&lt;!ATTLIST product color CDATA #IMPLIED size NMTOKEN #FIXED &quot;100&quot;&gt; 
&lt;!ELEMENT productName (#PCDATA)&gt;
&lt;!ATTLIST productName pcode ID #REQUIRED&gt; 
]&gt;</sentence>
    	<choice>&lt;product color=&quot;green&quot; size=&quot;100&quot;&gt;
  &lt;productName/&gt;
&lt;/product&gt;</choice>
    	<choice correct="true">&lt;product&gt;
  &lt;productName pcode=&quot;R513&quot;/&gt;
&lt;/product&gt;</choice>
    	<choice>&lt;product&gt;
  &lt;productName pcode=&quot;899AD1&quot;/&gt;
&lt;/product&gt;</choice>
    	<choice>&lt;product size=&quot;200&quot;&gt;
  &lt;productName pcode=&quot;t509&quot;/&gt;
&lt;/product&gt;</choice>
    	<comment>属性において#FIXEDは固定値で、属性が省略されたときは既定値を自動的に追加します。
#IMPLIEDは省略可能、#REQUIREDは必須の指定です。ID型は先頭に数字を指定できません。</comment>
    </question>
    <question>
    	<sentence>次のうち、XML Schemaで日付を表すために使用できるデータ型を選択してください。</sentence>
    	<choice>datetime</choice>
    	<choice>duration</choice>
    	<choice correct="true">date</choice>
    	<choice>gDate</choice>
    	<comment>XML Schemaで日付を表すために使用できるデータ型はdateです。gDateというデータ型はありません。</comment>
    </question>
    <question>
    	<sentence>次の「XML文書」と「XSLTスタイルシート」を適用したときの正しい結果を選択して
ください。 

「XML文書」
&lt;?xml version=&quot;1.0&quot; encoding=&quot;Shift_JIS&quot;?&gt;
&lt;body&gt;
  &lt;param&gt;
    &lt;item&gt;XMLの概要&lt;/item&gt;
    &lt;item&gt;XMLの歴史&lt;/item&gt;
  &lt;/param&gt;
  &lt;param&gt;
    &lt;item&gt;XML文書の種類&lt;/item&gt;
    &lt;item&gt;整形式XML文書とは&lt;/item&gt;
  &lt;/param&gt;
&lt;/body&gt;

「XSLTスタイルシート」
&lt;?xml version=&quot;1.0&quot; encoding=&quot;Shift_JIS&quot;?&gt;
&lt;xsl:stylesheet version=&quot;1.0&quot;
  xmlns:xsl=&quot;http://www.w3.org/1999/XSL/Transform&quot;&gt;
  &lt;xsl:template match=&quot;/&quot;&gt;
    &lt;xsl:apply-templates select=&quot;body/param&quot;/&gt;
  &lt;/xsl:template&gt;
  &lt;xsl:template match=&quot;param&quot;&gt;
    &lt;p&gt;&lt;xsl:value-of select=&quot;item&quot;/&gt;&lt;/p&gt;
  &lt;/xsl:template&gt;
&lt;/xsl:stylesheet&gt;</sentence>
    	<choice correct="true">&lt;p&gt;XMLの概要&lt;/p&gt;&lt;p&gt;XML文書の種類&lt;/p&gt;</choice>
    	<choice>&lt;p&gt;XMLの概要&lt;/p&gt;&lt;p&gt;XML文書の歴史&lt;/p&gt;</choice>
    	<choice>&lt;p&gt;XMLの概要&lt;/p&gt;</choice>
    	<choice>&lt;p&gt;整形式XML文書とは&lt;/p&gt;</choice>
    	<comment>xsl:value-of命令は、select属性に指定したノードセットが複数である場合は、先頭のノードの値のみを返します｡</comment>
    </question>
    <question>
    	<sentence>次のうち正しいXML文書を選択してください。</sentence>
    	<choice>&lt;data xmlns:abc=&quot;http://foo.com&quot;
    xmlns:xyz=&quot;http://foo.com&quot;&gt;
  &lt;abc:name value=&quot;ABC&quot; value=&quot;XYZ&quot;/&gt;
&lt;/data&gt;</choice>
    	<choice>&lt;data xmlns:abc=&quot;http://foo.com&quot;
    xmlns:xyz=&quot;http://foo.com&quot;&gt;
  &lt;abc:name abc:value=&quot;ABC&quot; xyz:value=&quot;XYZ&quot;/&gt;
&lt;/data&gt;</choice>
    	<choice>&lt;data xmlns:abc=&quot;http://foo.com&quot;
    xmlns:xyz=&quot;http://foo.com&quot;&gt;
  &lt;abc:name abc:value=&quot;ABC&quot; abc:value=&quot;XYZ&quot;/&gt;
&lt;/data&gt;</choice>
    	<choice correct="true">&lt;data xmlns:abc=&quot;http://foo.com&quot;
    xmlns:xyz=&quot;http://foo.com&quot;&gt;
  &lt;abc:name abc:value=&quot;ABC&quot; value=&quot;XYZ&quot;/&gt;
&lt;/data&gt;</choice>
    	<comment>1つの要素内に同名の属性を記述することは出来ません。
名前空間が異なっていれば、異なる属性名として判断されます。
名前空間接頭辞が異なっていても宣言された名前空間識別子が同じであれば同一の属性となります。
属性は要素の名前空間に属しません。要素と属性は別々に考えます。</comment>
    </question>
    <question>
    	<sentence>次の「XML文書A」に「XSLTスタイルシート」を適用します。出力結果として正しいも
のを選択してください。

「XML文書A」
&lt;?xml version=&quot;1.0&quot; encoding=&quot;Shift_JIS&quot;?&gt;
&lt;従業員情報&gt;
   &lt;番号&gt;a12345&lt;/番号&gt;  
   &lt;名前 かな=&quot;やまだ たろう&quot;&gt;山田 太郎&lt;/名前&gt;  
&lt;/従業員情報&gt;

「XSLTスタイルシート」
&lt;?xml version=&quot;1.0&quot; encoding=&quot;Shift_JIS&quot;?&gt;
&lt;xsl:stylesheet version=&quot;1.0&quot;
  xmlns:xsl=&quot;http://www.w3.org/1999/XSL/Transform&quot;&gt;
  &lt;xsl:template match=&quot;/&quot;&gt;
    &lt;xsl:apply-templates select=&quot;従業員情報/名前&quot;/&gt;
  &lt;/xsl:template&gt;
  &lt;xsl:template match=&quot;名前&quot;&gt;
    &lt;xsl:copy/&gt;
  &lt;/xsl:template&gt;
&lt;/xsl:stylesheet&gt;</sentence>
    	<choice correct="true">&lt;名前/&gt;</choice>
    	<choice>&lt;名前&gt;山田 太郎&lt;/名前&gt;</choice>
    	<choice>&lt;名前 かな=&quot;やまだ たろう&quot;/&gt;</choice>
    	<choice>&lt;名前 かな=&quot;やまだ たろう&quot;&gt;山田 太郎&lt;/名前&gt;</choice>
    	<comment>xsl:copy命令はカレントノードのみをコピーします。属性や子ノードはコピーされません。名前空間の情報はコピーされます。</comment>
    </question>
    <question>
    	<sentence>次の「XML文書」を「XML Schema文書」に対応した検証型XMLパーサで読み込んだとき、説明として正しいものを選択してください。

「XML文書」
&lt;?xml version=&quot;1.0&quot; encoding=&quot;Shift_JIS&quot; ?&gt;
&lt;toac:root xmlns:toac=&quot;http://www.toshiba-toac.co.jp/edu&quot;
    xmlns:xsi=&quot;http://www.w3.org/2001/XMLSchema-instance&quot;
    xsi:schemaLocation=&quot;http://www.toshiba-toac.co.jp/edu Sample.xsd&quot;&gt;
  &lt;toac:data/&gt;
&lt;/toac:root&gt;

「XML Schema文書」
&lt;?xml version=&quot;1.0&quot; encoding=&quot;Shift_JIS&quot; ?&gt;
&lt;xs:schema xmlns:xs=&quot;http://www.w3.org/2001/XMLSchema&quot;
    xmlns:toac=&quot;http://www.toshiba-toac.co.jp/edu&quot;
    targetNamespace=&quot;http://www.toshiba-toac.co.jp/edu&quot;&gt;
  &lt;xs:element name=&quot;root&quot;&gt;
    &lt;xs:complexType&gt;
      &lt;xs:sequence&gt;
        &lt;xs:element ref=&quot;toac:data&quot; minOccurs=&quot;0&quot;/&gt;
      &lt;/xs:sequence&gt;
    &lt;/xs:complexType&gt;
  &lt;/xs:element&gt;
  &lt;xs:element name=&quot;data&quot; type=&quot;xs:string&quot; fixed=&quot;education&quot;/&gt;
&lt;/xs:schema&gt;</sentence>
    	<choice correct="true">妥当な文書と判断され、data要素はないものとしてアプリケーションに通知される</choice>
    	<choice>妥当な文書と判断され、data要素の内容として「education」という値がアプリケーションに通知される</choice>
    	<choice>XML Schemaの記述に誤りがあると判断される</choice>
    	<choice>妥当でないと判断される</choice>
    	<comment>XML Schemaでは要素の宣言としてfixed属性により固定値を指定することができます。インスタンス文書で空要素となっていた場合は固定値がアプリケーションに通知されます。要素自体がない場合はそのまま要素がないものとして扱われます。
data要素に対するminOccursの指定が0なのでdata要素が省略された、妥当な文書であると判断されます。</comment>
    </question>
  </group>
</quiz>
<!--
    <question>
    	<sentence></sentence>
    	<choice></choice>
    	<choice correct="true"></choice>
    	<choice></choice>
    	<choice></choice>
    	<comment></comment>
    </question>
-->
