<?xml version="1.0" encoding="UTF-8" ?>
<quiz>
  <title>OCUP</title>
  <description>OMG認定UML技術者認定試験</description>
  <group name="Fundamental">
	<question>
		<sentence>ユースケース図で、ユースケースを表す図形はどれか？</sentence>
		<choice>人型（スティックマンアイコン）</choice>
		<choice>白抜きの三角形</choice>
		<choice correct="true">楕円</choice>
		<choice>長方形</choice>
		<comment>四角形内部に小さな楕円のアイコンを置くことで、それをユースケースとして表すこともできる。</comment>
	</question>
	<question>
		<sentence>ワークフローやビジネスプロセスを表現するのに適したUMLの図はどれか？</sentence>
		<choice>コンポーネント図</choice>
		<choice correct="true">コミュニケーション図（コラボレーション図）</choice>
		<choice>アクティビティ図</choice>
		<choice>配備図</choice>
		<comment>アクティビティ図では、アクションと呼ばれる処理の単位（どのような処理を行うかは任意）の間のコントロールフローやデータフロー、分岐や同期などを記述することができる。</comment>
	</question>
	<question>
		<sentence>インタフェースの説明として誤っているものを選びなさい</sentence>
		<choice>サービスを宣言するための分類子である</choice>
		<choice>インスタンス化できない</choice>
		<choice correct="true">複数のインタフェースは一つの分類子で表現できない</choice>
		<choice>実装は異なる分類子によって行われる</choice>
		<choice>外部のモデルエレメントからは操作のみが公開される</choice>
		<comment>複数のインタフェースは一つの分類子で表現可能です</comment>
	</question>
	<question>
		<sentence>ピンを二つ持つアクションがある。それぞれのピンは入力の矢印を1つずつ持っている（それぞれのピンに対して、矢印が1つ入って来ている）。このアクションが処理を開始する前に、幾つの矢印から値を受け取る必要があるか？</sentence>
		<choice>0</choice>
		<choice correct="true">1</choice>
		<choice>2</choice>
		<choice>任意</choice>
		<comment>ピンとは、アクションに付随するインプット／アウトプットを表すオブジェクトノードである。入力を表すピン、つまりインプットピンの場合、アクションに付随する全てのピンが値を受け取るまでは、そのアクションは実行されない。複数の矢印（オブジェクトフロー、もしくはコントロールフロー）を入力、および出力に持つことのできるノードは何種類か存在している。それぞれについて、処理を開始する際の条件、処理が終わった後の動作を理解する必要がある。</comment>
	</question>
	<question>
		<sentence>ファウンドメッセージとは何か？</sentence>
		<choice>受信イベントの存在しないメッセージ</choice>
		<choice correct="true">送信イベントの存在しないメッセージ</choice>
		<choice>それによって処理の発生しないメッセージ</choice>
		<choice>同期／非同期のどちらであっても良いメッセージ</choice>
		<comment>ファウンドメッセージとは、送信イベント（メッセージの送信のこと）が存在しないメッセージである。センダーを考慮しなくても良い場合や、センダーがモデルの範囲外の場合に利用される。一方、受信イベントの存在しないメッセージはロストメッセージと呼ばれる。</comment>
	</question>
	<question>
		<sentence>多重度の範囲を表す典型的な記述はどれか？</sentence>
		<choice>1,,0</choice>
		<choice correct="true">3..10</choice>
		<choice>-1..4</choice>
		<choice>1 / 3</choice>
		<choice>3 - 8</choice>
		<comment>多重度は「下限..上限」と記述するが、多重度は正の整数値に限られるためマイナスの数字を記述することはできない。なお、1以上の場合には「1..*」とアスタリスクを利用し、正確に1である場合は単に「1」と記述する。</comment>
	</question>
	<question>
		<sentence>オブジェクト指向でシステムを開発する場合、カプセル化の効果として適切なものはどれか。&lt;開発&gt;</sentence>
		<choice correct="true">オブジェクトの内部データ構造やメソッドの実装を変更しても、その影響をほかのオブジェクトに及ぼしにくい。</choice>
		<choice>親クラスの属性を子クラスが利用できるので、親クラスの属性を子クラスの属性の定義に利用できる。</choice>
		<choice>既存の型に加えてユーザ定義型を追加できるので、問題領域に合わせてプログラムの仕様を拡張できる。</choice>
		<choice>同一メッセージを各オブジェクトに送っても、オブジェクトによって動作が異なるので、メッセージを受け取るオブジェクトの種類が増えても、メッセージを送るオブジェクトには影響がない。</choice>
		<comment>カプセル化とは、データを情報隠ぺいし、一体化するメソッド(オブジェクトの振る舞いを定義する手続きのこと)以外にデータを操作できないようにすることをいう。カプセル化されたオブジェクトは、外部インタフェース以外にオブジェクト内部が見えなくなる。カプセル化されたオブジェクトに対しては、メッセージパッシングを用いて、外部インタフェースを介してメソッドを実行すること以外に、隠ぺいされたデータを扱えないので、オブジェクトの独立性が高まり、オブジェクトの保守性やデータの正当性が確保される。
 ちなみに、他の選択肢は「クラスの継承関係(インヘリタンス)に関する記述」「オブジェクト内部で定義するデータ型に関する記述」「ポリモフィズム(Polymorphism；多相性)に関する記述」である。</comment>
	</question>
	<question>
		<sentence>アクティビティにはエッジともう1つ、何が含まれるか？</sentence>
		<choice>メッセージパッシング</choice>
		<choice>インタフェース</choice>
		<choice>状態</choice>
		<choice correct="true">ノード</choice>
		<comment>アクティビティにはエッジとノードが含まれている。ノードとはアクションやジョイン／フォークなどを指し、それらを結ぶ線をエッジと呼ぶ。</comment>
	</question>
	<question>
		<sentence>ユースケース図で、ユースケースを表す図形はどれか？</sentence>
		<choice>人型（スティックマンアイコン）</choice>
		<choice>白抜きの三角形</choice>
		<choice correct="true">楕円</choice>
		<choice>長方形</choice>
		<comment>なお、四角形内部に小さな楕円のアイコンを置くことで、それをユースケースとして表すこともできる。</comment>
	</question>
	<question>
		<sentence>&lt;&lt;permit&gt;&gt;という依存関係について正しいものはどれか？</sentence>
		<choice correct="true">「クライアント」モデルエレメントに対して、「サプライヤ」モデルエレメントが自らへのアクセスを許可する</choice>
		<choice>「サプライヤ」モデルエレメントに対して、「クライアント」モデルエレメントが自らへのアクセスを許可する</choice>
		<choice>パブリックとプライベートの情報にはアクセスができるが、パッケージの情報にはパッケージ外からだとアクセスできない</choice>
		<choice>「サプライヤ」モデルエレメントのすべての情報にアクセスでき、変更も可能である</choice>
		<choice>「クライアント」モデルエレメントのすべての情報にアクセスでき、変更も可能である</choice>
		<comment>&lt;&lt;permit&gt;&gt;は依存関係の一種であり、アクセスの許可を表している。「クライアント」モデルエレメント（アクセスを許可されたモデルエレメント）は、「サプライヤ」モデルエレメントの非公開要素に対してもアクセス可能であること。</comment>
	</question>
	<question>
		<sentence>依存関係のステレオタイプ&lt;&lt;permit&gt;&gt;の説明として正しいものを選びなさい</sentence>
		<choice>何かしらの情報にアクセス可能である</choice>
		<choice>可視性がパブリック以外の情報にアクセス可能である</choice>
		<choice correct="true">全ての可視性の情報にアクセス可能である</choice>
		<choice>制約を満たす場合にアクセス可能である</choice>
		<choice>プロテクト以外の情報にアクセス可能である</choice>
		<comment></comment>
	</question>
	<question>
		<sentence>ユースケース図において、システムが提供するサービス（機能）は何と呼ばれるか？</sentence>
		<choice>ユーザ</choice>
		<choice>アクター</choice>
		<choice>サブシステム</choice>
		<choice>クラス</choice>
		<choice correct="true">ユースケース</choice>
		<comment>利用者はアクター、システムが提供するサービス（機能）はユースケースと呼ばれる。</comment>
	</question>
	<question>
		<sentence>アクティビティ図で使用するウェイトの説明として正しいものを選びなさい。</sentence>
		<choice>指定時間アクションの実行を遅らせる</choice>
		<choice correct="true">アクションが実行されるためのオブジェクト数の制約である</choice>
		<choice>アクションが実行されるための制約である</choice>
		<choice>アクションノードにおける制約である</choice>
		<comment></comment>
	</question>
	<question>
		<sentence>ユースケース図で使用する関係として存在しないものを選びなさい。</sentence>
		<choice>包含</choice>
		<choice>汎化</choice>
		<choice>関連</choice>
		<choice correct="true">実現</choice>
		<choice>拡張</choice>
		<comment></comment>
	</question>
	<question>
		<sentence>アクティビティ図においてピンとは何を表すものか？</sentence>
		<choice>アクション</choice>
		<choice correct="true">オブジェクトノード</choice>
		<choice>アクティビティ</choice>
		<choice>マージ／フォーク</choice>
		<comment>ピンとは、アクションに付随するインプット／アウトプットを表すオブジェクトノードである。なお、アクティビティ図ではアクション（処理）は角の丸い長方形、オブジェクトノード（やり取りされるデータ）は長方形で表現される。オブジェクトノードにはもう一種類、パラメータノードというものが存在する。パラメータノードはアクティビティに付随するインプット／アウトプットのことである。</comment>
	</question>
	<question>
		<sentence>メタモデルの説明として正しいものを選びなさい。</sentence>
		<choice>スーパークラスの構成</choice>
		<choice>モデルの概念を表現したドキュメント</choice>
		<choice>概念オブジェクトの関係を図示したモデル</choice>
		<choice>エレメント自身を定義したモデル</choice>
		<choice correct="true">エレメントを表現する言語を定義したモデル</choice>
		<comment></comment>
	</question>
	<question>
		<sentence>パッケージのマージについての説明として正しいものを選びなさい。</sentence>
		<choice>同名、同種の分類子がある場合はソース側の分類子がターゲット側の分類子で上書きされる</choice>
		<choice correct="true">同名、同種の分類子がある場合はソース側の分類子がターゲット側の分類子から汎化される</choice>
		<choice>同名、同種の分類子がある場合はターゲット側の分類子がソース側の分類子で上書きされる</choice>
		<choice>同名、同種の分類子がある場合はターゲット側の分類子がソース側の分類子から汎化される</choice>
		<choice>同名、同種の分類子がある場合はマージできない</choice>
		<comment></comment>
	</question>
	<question>
		<sentence>クラスの説明として誤っているものを選びなさい。</sentence>
		<choice correct="true">クラスはオブジェクトの持つ特徴を構造にて規定する</choice>
		<choice>分類子の代表であり、分類子に特に指定がない場合はクラスとして認識される</choice>
		<choice>属性はクラスのプロパティのインスタンスである</choice>
		<comment></comment>
	</question>
	<question>
		<sentence>データ型に関する説明として誤っているものを選びなさい。</sentence>
		<choice>データ型のインスタンスはデータそのものである</choice>
		<choice>データ型にはUMLで定義されたプリミティブ型とエニュマレーション型がある</choice>
		<choice correct="true">表示は分類子にキーワード&lt;&lt;data&gt;&gt;を用いる</choice>
		<comment>データ型の表示はキーワード&lt;&lt;data Type&gt;&gt;を用いる</comment>
	</question>
	<question>
		<sentence>プロパティに関する説明として誤っているものを選びなさい。</sentence>
		<choice>プロパティとはエレメントの性格を表すものである</choice>
		<choice>プロパティは多重度エレメントを継承したものである</choice>
		<choice correct="true">プロパティはクラスではインスタンス名を指す</choice>
		<choice>プロパティはunique，orderedというメタ属性を継承したものである</choice>
		<comment>プロパティはクラスでは属性を指します</comment>
	</question>
	<question>
		<sentence>インスタンスとインスタンスを結ぶ実線のことを何と言うか？</sentence>
		<choice>関連</choice>
		<choice>依存</choice>
		<choice correct="true">リンク</choice>
		<choice>実現</choice>
		<comment>リンクは関連のインスタンスである</comment>
	</question>
	<question>
		<sentence>式に含まれないものを選びなさい。</sentence>
		<choice>四則演算</choice>
		<choice>true、false</choice>
		<choice>XOR、AND</choice>
		<choice>plus(x，1):Integer</choice>
		<choice correct="true">OCL</choice>
		<comment>OCLは、式の表現を指定する事前に定義された言語です。</comment>
	</question>
	<question>
		<sentence>要求インタフェースと組み合わせることのできるものはどれか？</sentence>
		<choice correct="true">提供インタフェース</choice>
		<choice>集約関係</choice>
		<choice>依存関係</choice>
		<choice>継承関係</choice>
		<comment>要求インタフェースはUML 2.0で追加されたものであり、ソケットという記号で記述する。コンポーネント図や複合構造図で利用するが、例えば「このコンポーネントを利用するには、XXXというインタフェースを持った他のコンポーネントと組み合わせなければならない」ということを示すために利用される。一方で、要求インタフェースと組み合わせるものを提供インタフェースと呼ぶ。これは、いわゆる従来からの「インタフェース」と同じ意味で、記号としてはロリポップ（白抜きの円＋実線）で記述する。 </comment>
	</question>
	<question>
		<sentence>&lt;&lt;abstraction&gt;&gt;という依存関係の説明として正しいものを選びなさい。</sentence>
		<choice>継承が必要な関係</choice>
		<choice correct="true">同じ概念だが、異なる抽象レベルまたは異なる視点から見た関係</choice>
		<choice>意味的に異なる概念である関係</choice>
		<comment></comment>
	</question>
	<question>
		<sentence>分類子（classifier）とは何か？</sentence>
		<choice>エレメント間の接続関係を明記しているエレメント</choice>
		<choice>一連の外部規約を表し，他の分類子によって実現される型</choice>
		<choice>そのインスタンスが，特性（feature）と属性を持つオブジェクトとなる型</choice>
		<choice correct="true">特性（feature）を持ち，他の分類子と汎化関係を持つことのできる型</choice>
		<comment>分類子（classifier）とはクラスやインタフェースなどを総称した呼び方である（正確にはこれらを汎化した要素）。特性（feature）は、振る舞い特性と構造的特性に分けることができ、それぞれメソッド（オペレーション）、および属性が代表例である。</comment>
	</question>
	<question>
		<sentence>アクティビティ図の事前条件・事後条件の表現として正しいものを選びなさい。</sentence>
		<choice>アクションの中に｛｝を使用して記述</choice>
		<choice>アクション間に引く矢印の上部に｛｝を使用して記述</choice>
		<choice correct="true">アクションから点線を引き、ノートで記述</choice>
		<choice>アクション間に引く矢印から点線を引き、ノートで記述</choice>
		<comment></comment>
	</question>
	<question>
		<sentence>インタラクション図の生存線の説明として正しいものを選びなさい。</sentence>
		<choice>オブジェクトの下に破線で表現する</choice>
		<choice>通常、生存線は複数のオブジェクトを表す</choice>
		<choice>S[h]の表記はSという名称のオブジェクトのh個の集合を表す</choice>
		<choice correct="true">Selfキーワードは生存線のオーナーオブジェクトを表す</choice>
		<comment> 生存線は矩形と破線を組み合わせたもののことをいい、通常一つのオブジェクトを表す。複数のオブジェクトの一つを選択するにはS[h]と表記する。</comment>
	</question>
	<question>
		<sentence>コントロールフロー、オブジェクトフローの説明として誤っているものを選びなさい。</sentence>
		<choice correct="true">コントロールフローはアクション間に渡されるオブジェクトやデータを記述できる</choice>
		<choice>オブジェクトフローはノードピンで表現するときも受け渡しをするオブジェクトを記述できる</choice>
		<choice>一つのエッジがオブジェクトを掴むと、他のエッジはオブジェクトを受け取れない</choice>
		<choice>&lt;&lt;selection&gt;&gt;キーワードを用いて送るべきオブジェクトを選択できる</choice>
		<comment>コントロールフローではオブジェクトの引渡しを記述できない。</comment>
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
