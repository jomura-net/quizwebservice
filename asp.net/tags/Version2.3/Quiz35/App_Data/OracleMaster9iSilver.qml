<?xml version="1.0" encoding="UTF-8" ?>
<quiz>
  <title>Oracle Master</title>
  <description>ORACLE MASTER Database</description>
  <group name="Oracle9i Silver">
	<question>
		<sentence>DISABLE状態の制約をENABLE VALIDATE状態に変更し、制約を使用可能にする必要があります。ただし、この変更中に表をロックしたくはありません。この場合の操作として最も適切なのはどれですか。</sentence>
		<choice>ロックを回避することはできない。</choice>
		<choice>DISABLEからENABLE VALIDATEに一度に変更する。</choice>
		<choice>DISABLEからDISABLE VALIDATEに変更し、その後、ENABLE VALIDATEに変更する。</choice>
		<choice correct="true">DISABLEからENABLE NOVALIDATEに変更し、その後、ENABLE VALIDATEに変更する。</choice>
		<comment>DISABLE NOVALIDATEからENABLE VALIDATEに一気に変更すると、一時的に表がロックされます。ロックを回避するには、DISABLEからENABLE NOVALIDATEに変更し、その後、ENABLE VALIDATEに変更します。</comment>
	</question>
	<question>
		<sentence>データ更新処理を行った際のSGA上での書込み手順について、正しいものを選択して下さい。</sentence>
		<choice correct="true">REDOログ・バッファ → UNDOセグメント → 該当データ</choice>
		<choice>該当データ → UNDOセグメント → REDOログ・バッファ</choice>
		<choice>UNDOセグメント → REDOログ・バッファ → 該当データ</choice>
		<choice>該当データ → REDOログ・バッファ → UNDOセグメント</choice>
		<comment>データを更新する際は、最初にREDOログ・バッファに変更履歴を書き込み、次にRollback等の時に使用するためUNDOセグメントに変更前データを書き込みます。その後、該当データを変更します。</comment>
	</question>
	<question>
		<sentence>次のSQL文で、ユーザーが COMMIT を実行した場合に行われる処理はどれですか。
UPDATE employees SET first_name = 'Mary'
WHERE emp_id = 1012;
COMMIT;</sentence>
		<choice correct="true">LGWRによって、REDOログ・バッファのエントリがREDOログ・ファイルに書き込まれる。</choice>
		<choice>共有プールから、コミット対象のSQL文がフラッシュされる。</choice>
		<choice>チェックポイントが発生し、データ・ファイルのヘッダが更新される。</choice>
		<choice>ユーザー・プロセスが、サーバー・プロセスに対してトランザクションが完了したことを通知する。</choice>
		<comment>COMMIT時にはLGWRによって、REDOログ・バッファのエントリがREDOログ・ファイルに書き込まれます。</comment>
	</question>
	<question>
		<sentence>EMP表のENAME列につけたコメントを削除します。SQL文として正しいものを選択して下さい。</sentence>
		<choice correct="true">COMMENT ON COLUMN emp.ename IS '';</choice>
		<choice>COMMENT ON COLUMN emp.ename drop;</choice>
		<choice>COMMENT ON COLUMN emp.ename delete;</choice>
		<choice>COMMENT ON COLUMN emp.ename IS null;</choice>
		<comment>表または列に対してつけたコメントを削除する場合は、空の文字列（''）を指定します。</comment>
	</question>
	<question>
		<sentence>データベースへの特権ユーザー接続を認証する方法として正しいのはどれですか。</sentence>
		<choice>Performance Managerオペレーティング・システム認証を利用する。</choice>
		<choice correct="true">パスワード・ファイル認証を利用する。</choice>
		<choice>通常のデータベース・ユーザーの認証を利用する。</choice>
		<choice>OracleにSYSTEMユーザーとしてログインする。</choice>
		<comment>データベースを起動・停止などするための特権ユーザーは、パスワードファイル認証かOS認証を使用してログインします。</comment>
	</question>
	<question>
		<sentence>TRUNC(TO_DATE('01-08-24', 'YY-MM-DD'), 'MM')の結果として、正しいものを選択してください。ただし、デフォルトの日付書式は'YY-MM-DD'とします。</sentence>
		<choice correct="true">01-08-01</choice>
		<choice>01-09-01</choice>
		<choice>エラー</choice>
		<choice>01-01-01</choice>
		<comment>TRUNC関数は切り捨てをする関数ですが、数値と日付に対して使用できます。TRUNC(日付,レベル)と記述し、レベルをMMと指定すると月のレベルで切り捨て、すなわち日を切り捨てます。</comment>
	</question>
	<question>
		<sentence>次のSQL文に関する説明として正しいのはどれですか。
ALTER TABLE hr.employees MOVE TABLESPACE data1;</sentence>
		<choice correct="true">索引が無効となるため、索引を再構築する必要がある。</choice>
		<choice>行移行は解消されない。</choice>
		<choice>hr.employeesのデータは全行削除される。</choice>
		<choice>スキーマが変更されるので、権限を付与し直す必要がある。</choice>
		<comment>ALTER TABLE 表名 MOVE TABLESPACE 表領域名; は表を再構築する構文です。表を別の表領域に移動でき、行移行や断片化を解消できます。特徴は、
・索引、制約、権限は保持される。
・ROWIDが変わるので索引は再構築する必要がある。
・パーティション表には適用できない。
・同じ表領域へは移動できない。</comment>
	</question>
	<question>
		<sentence>データベースのマウント時に行われる作業として、正しいのはどれですか。</sentence>
		<choice correct="true">制御ファイルをオープンする。</choice>
		<choice>データ・ファイルの存在をチェックする。</choice>
		<choice>REDOログ・ファイルをオープンする。</choice>
		<choice>SPFILEをオープンする。</choice>
		<comment>データベースの起動順序は以下のとおりです。
1.ノーマウント⇒インスタンスの起動
2.マウント⇒制御ファイルのオープン
3.オープン⇒データファイルとREDOログ・ファイルのオープン</comment>
	</question>
	<question>
		<sentence>SQL*Plusの起動時に読み込まれる、初期設定を格納するためのファイルを選択してください。</sentence>
		<choice correct="true">login.sql</choice>
		<choice>start.sql</choice>
		<choice>login</choice>
		<choice>start</choice>
		<comment>SQL*Plusを起動する際にはlogin.sqlに記述されている設定を読み込んで起動します。</comment>
	</question>
	<question>
		<sentence>どの列に制約がついているかを確認したいときに使用するデータ・ディクショナリ・ビューを選択して下さい。</sentence>
		<choice correct="true">USER_CONS_COLUMNS</choice>
		<choice>USER_COL_CONSTRAINTS</choice>
		<choice>USER_CONSTRAINTS</choice>
		<choice>USER_TAB_COLUMNS</choice>
		<comment>USER_CONSTRAINTSビューでは、どの表の制約であるかは確認できますが、列名まではできません。列名まで確認するにはUSER_CONS_COLUMNSビューを調べます。</comment>
	</question>
	<question>
		<sentence>データベースで、Oracle-Managed Filesを使用することにしました。データ・ファイルを配置するデフォルトの場所を指定するための初期化パラメータはどれですか。</sentence>
		<choice>DB_FILES</choice>
		<choice correct="true">DB_CREATE_FILE_DEST</choice>
		<choice>DB_CREATE_ONLINE_LOG_DEST_n</choice>
		<choice>USER_DUMP_DEST</choice>
		<comment>Oracle-Managed Filesはパラメータを使用して、ファイルの場所を指定できます。
・db_create_file_destでデータファイルの場所を指定
・db_create_online_log_dest_nでREDOログ・ファイルと制御ファイルの場所を指定</comment>
	</question>
	<question>
		<sentence>オブジェクト権限に関する説明として、正しいのはどれですか。</sentence>
		<choice correct="true">あるユーザーからオブジェクト権限を取り消すと、そのユーザーによってWITH GRANT OPTIONを使用して権限を付与されたユーザーの権限も取り消される。</choice>
		<choice>オブジェクト権限を全ユーザーに対して付与することはできない。</choice>
		<choice>オブジェクト権限は、ロールに付与することはできない。</choice>
		<choice>オブジェクト権限を付与するには、そのオブジェクトを所有しているか、DBAロールを付与されている必要がある。</choice>
		<comment>すべてのユーザーは自分のオブジェクトに対するオブジェクト権限を他のユーザーやロールに付与することが可能です。通常は付与された権限を他のユーザーに付与することは出来ませんが、WITH GRANT OPTION付きで付与された権限に限り、他のユーザーに付与することができます。

例：A⇒(with grant)⇒B⇒(with grant)⇒C

ただし、上記の例でBの権限が取り消された場合、Cの権限も取り消されます。</comment>
	</question>
	<question>
		<sentence>以下のようにORDER_SEQ順序を定義し使用しています。

CREATE SEQUENCE order_seq INCREMENT BY 5 
START WITH 2 MAXVALUE 12 CYCLE NOCACHE;

このとき、開始値とそれに続いて生成された順序値8個のリストとして正しいものを選択して下さい。</sentence>
		<choice correct="true">2,7,12,1,6,11,1,6,11</choice>
		<choice>5,7,9,11,1,3,5,7,9</choice>
		<choice>2,7,12,2,7,12,2,7,12</choice>
		<choice>2,7,2,7,2,7,2,7,2</choice>
		<comment>順序はSTART WITH句で指定した番号から始め、INCREMENT BY句で指定した間隔で値を生成します。また、CYCLEと指定していますので昇順の場合MAXVALUEに達するとMINVALUEに戻ります。MINVALUE句が指定されていない場合、昇順に値を生成する際のデフォルト値は1となります。</comment>
	</question>
	<question>
		<sentence>SQL*Plusからデータベースを作成する場合、あらかじめ用意しておく必要があるのはどれですか。
</sentence>
		<choice>制御ファイル</choice>
		<choice correct="true">初期化パラメータ・ファイル</choice>
		<choice>トレース・ファイル</choice>
		<choice>REDOログ・ファイル</choice>
		<comment>CREATE DATABASE文を実行する前に必要なバラメータを記述した初期化パラメータファイルをあらかじめ準備しておく必要があります。</comment>
	</question>
	<question>
		<sentence>次の文の中で、正しく実行されないものを選択してください。</sentence>
		<choice correct="true">SELECT COUNT(job, mgr) FROM emp;</choice>
		<choice>SELECT COUNT(DISTINCT job) FROM emp;</choice>
		<choice>SELECT MAX(AVG(sal)) FROM emp GROUP BY deptno;</choice>
		<choice>SELECT MAX(sal), AVG(sal) FROM emp;</choice>
		<comment>COUNT関数の使い方は次の3つです。
・COUNT(*)  ⇒ 表の行数
・COUNT(列名) ⇒ 列の値の数
・COUNT(DINSTINCT 列名) ⇒ 列の値の種類の数</comment>
	</question>
	<question>
		<sentence>ユーザーAがユーザーBにWITH GRANT OPTION付きでA.EMP表のSELECT権限を与えたとします。正しいものを選択して下さい。</sentence>
		<choice correct="true">ユーザーBがユーザーCにA.EMP表のSELECT権限を与えた後、ユーザーAはユーザーBに与えたA.EMP表のSELECT権限を取り消した。この場合、ユーザーCに与えられたA.EMP表のSELECT権限も取り消される。</choice>
		<choice>ユーザーBはユーザーCに対して、WITH GRANT OPTION付きでA.EMP表のSELECT権限を与えることができない。</choice>
		<choice>そもそもオブジェクト権限を他のユーザーに与える際、WITH GRANT OPTIONというオプションは使えない。</choice>
		<choice>ユーザーAはユーザーBに与えたSELECT権限を取り消すことはできない。</choice>
		<comment>ユーザーAがWITH GRANT OPTION付きでオブジェクト権限を付与すると、付与されたユーザーBは他のユーザーCにその権限を付与できます。
また、AがBの権限を取り消すと、Bにより付与されたCの権限も取り消されます。ただし、Aが直接Cの権限を取り消すことはできません。</comment>
	</question>
	<question>
		<sentence>ユーザーyokoには、hr_mgr、hr_clerk、oe_clerkの3つのロールが付与されており、hr_clerkがデフォルト・ロールに設定されています。また、hr_mgrにはパスワードが設定されています。
ログイン後、ある処理を行うために、現在のロールに加えてhr_mgrロールを使用する
必要がでてきました。このときに発行するSQL文として適切なものはどれですか</sentence>
		<choice>SET ROLE hr_mgr;</choice>
		<choice>SET ROLE hr_mgr,hr_clerk;</choice>
		<choice correct="true">SET ROLE hr_mgr IDENTIFIED BY password,hr_clerk;</choice>
		<choice>SET ROLE hr_mgr IDENTIFIED BY password;</choice>
		<comment>ロールを有効化する場合、次の構文を使用する。
 SET ROLE ロール名;
パスワード付きのロールの場合は次の構文を使用する。
 SET ROLE ロール名 IDENTIFIED BY パスワード;
ただし、SET ROLE文は指定されたロールを有効化し、それ以外のロールを無効化するので、使用したいロールをすべて指定しなくてはならない。</comment>
	</question>
	<question>
		<sentence>次のようにEMP_VUビューを定義しました。

CREATE VIEW emp_vu AS SELECT * FROM emp WHERE deptno=20 WITH CHECK OPTION;

このとき、以下のDML文の中で、エラーになるものを選択して下さい。ただし、元表
には制約は定義されていないものとします。</sentence>
		<choice>UPDATE emp_vu SET sal=sal+100 WHERE deptno=20;</choice>
		<choice>UPDATE emp_vu SET deptno=20 WHERE deptno=10;</choice>
		<choice>DELETE FROM emp_vu;</choice>
		<choice correct="true">UPDATE emp_vu SET deptno=30 WHERE deptno=20;</choice>
		<comment>WITH CHECK OPTION句は、ビューを通じて実行されたINSERT及びUPDATEがビューで選択されない行を作成できないようにします。</comment>
	</question>
	<question>
		<sentence>以下のような検索結果となるSELECT文を選択してください。 

ENAME
------
ALLEN
ADAMS</sentence>
		<choice>SELECT ename FROM emp WHERE ename = 'A%';</choice>
		<choice>SELECT ename FROM emp WHERE SUBSTR(ename, 1) = 'A';</choice>
		<choice correct="true">SELECT ename FROM emp WHERE INSTR(ename, 'A') = 1;</choice>
		<choice>SELECT ename FROM emp WHERE ename LIKE '_A%';</choice>
		<comment>SUBSTR関数は文字列から文字を抜き出す関数。INSTR関数は特定の文字が何文字目かを返す関数です。</comment>
	</question>
	<question>
		<sentence>制御ファイルから情報を取得する動的パフォーマンス・ビューはどれですか。</sentence>
		<choice correct="true">V$DATAFILE</choice>
		<choice>V$UNDOSTAT</choice>
		<choice>V$SGA</choice>
		<choice>V$PARAMETER</choice>
		<comment>制御ファイルにはデータ・ファイルやREDOログ・ファイルの情報も含まれています。V$DATAFILEは制御ファイルにあるデータ・ファイルの情報を表示する動的パフォーマンス・ビューです。</comment>
	</question>
	<question>
		<sentence>既存のセーブポイントと同じ名前のセーブポイントを作成しようとすると、（　　）。</sentence>
		<choice correct="true">既存のセーブポイントが削除される</choice>
		<choice>既存のセーブポイントを削除してよいかどうか問われる</choice>
		<choice>名前が重複しないように、新しいセーブポイントの名前が自動的に決定される</choice>
		<choice>エラーになる</choice>
		<comment>既存のセーブポイントと同じ名前のセーブポイントを作成しようとすると、既存のセーブポイントが上書きされます。</comment>
	</question>
	<question>
		<sentence>次のデータ型の中で、存在するものを選択して下さい。</sentence>
		<choice>INTERVAL MONTH TO DAY</choice>
		<choice>INTERVAL YEAR TO MONTHS</choice>
		<choice correct="true">INTERVAL DAY TO SECOND</choice>
		<choice>INTERVAL YEAR TO SECOND</choice>
		<comment>INTERVAL DAY TO SECOND型は日、時、分、秒で期間を格納します。</comment>
	</question>
	<question>
		<sentence>制御ファイルを多重化する手順を正しく並べ変えたものはどれですか。
a) Oracle Serverを停止する。
b) Oracle Serverを起動する。
c) 既存の制御ファイルを新しい名前でコピーする。
d) SPFILEのcontrol_files初期化パラメータに新しい制御ファイルの名前を追加す
る。</sentence>
		<choice>d、c、a、b</choice>
		<choice correct="true">d、a、c、b</choice>
		<choice>d、a、b、c</choice>
		<choice>c、a、d、b</choice>
		<comment>制御ファイルの多重化は以下の手順で行います。
1. SPFILEのcontrol_files初期化パラメータに新しい制御ファイルの名前を追加する。
2. Oracle Serverを停止する。
3. 既存の制御ファイルを新しい名前でコピーする。
4.Oracle Serverを起動する。</comment>
	</question>
	<question>
		<sentence>データベース・キャラクタ・セットが移行可能かどうかを判断するユーティリティはどれですか。</sentence>
		<choice correct="true">Character Set Scanner</choice>
		<choice>Oracle Data Scanner</choice>
		<choice>Oracle Locale Builder</choice>
		<choice>Oracle Database Configuration Assistant</choice>
		<comment>Character Set Scannerはキャラクタ・セットが以降可能かどうかを診断するツールです。</comment>
	</question>
	<question>
		<sentence>REDOログ・グループを追加する必要があります。このために使用するSQL文はどれですか。</sentence>
		<choice correct="true">ALTER DATABASE ADD LOGFILE '/ORADATA/u01/log3a.rdo' SIZE 1M;</choice>
		<choice>ALTER DATABASE ADD LOGFILE GROUP ('/ORADATA/u01/log3a.rdo') SIZE 1M;</choice>
		<choice>ALTER DATABASE ADD LOGFILE ('/ORADATA/u01/log3a.rdo') TO GROUP 3;</choice>
		<choice>ALTER DATABASE ADD LOGFILE MEMBER ('/ORADATA/u01/log3a.rdo') TO GROUP 3;</choice>
		<comment>ログ・グループを追加するには以下の構文を使用します。
ALTER DATABASE ADD LOGFILE GROUP n
'ファイル名' SIZE サイズ ;
ただし、GROUP nは省略可です。</comment>
	</question>
	<question>
		<sentence>TO_CHAR関数で「8月7日 火曜日」と表示させるときの書式を選択してください。</sentence>
		<choice correct="true">FMMM"月"DD"日" DAY</choice>
		<choice>FMMM"月"FMDD"日" DAY</choice>
		<choice>MM"月"DD"日" DAY</choice>
		<choice>MM"月"FMDD"日" DAY</choice>
		<comment>表示形式で 'MM"月"DD"日"'と指定した場合「08月07日」と表示されてしまいます。そこで、FMをつけておくと先行0を省略して表示します。
※FM は、指定するたびにオン、オフが切り替わるようになっております。
「8月7日 火曜日」と表示するには、「FMMM"月"DD"日" DAY」と指定する必要があります。
「FMMM"月"FMDD"日" DAY」と指定した場合は、1つめの FM で先行ゼロがオフになり、2つめの FM で先行ゼロがオンになりますので、表示される結果は「8月07日 火曜日」となります。</comment>
	</question>
	<question>
		<sentence>NLS_LANGUAGE初期化パラメータが暗黙的に設定するパラメータとして、正しいのはどれですか</sentence>
		<choice correct="true">NLS_SORT</choice>
		<choice>NLS_DATE_FORMAT</choice>
		<choice>NLS_CURRENCY</choice>
		<choice>NLS_ISO_CURRENCY</choice>
		<comment>NLS_SORTとNLS_DATE_LANGUAGEはNLS_LANGUAGEが設定されると暗黙的にに設定される。</comment>
	</question>
	<question>
		<sentence>以下のSQL文を実行した場合の正しい記述を選択して下さい。

CREATE TABLE emp (empno NUMBER(4) CONSTRAINT emp_pk PRIMARY KEY, ename VARCHAR2(30), deptno NUMBER(2) CONSTRAINT emp_fk REFERENCES dept(deptno));</sentence>
		<choice correct="true">empno列に「emp_pk」という名前で索引が作成される。</choice>
		<choice>empno列にOracleが自動生成した名前で索引が作成される。</choice>
		<choice>deptno列に「emp_fk」という名前で索引が作成される。</choice>
		<choice>deptno列にOracleが自動生成した名前で索引が作成される。</choice>
		<comment>PRIMARY KEY制約、またはUNIQUE制約を定義した列には、自動的に一意索引が作成されます。その索引の名前は制約と同じになります。</comment>
	</question>
	<question>
		<sentence>REDOログ・ファイルの構造に関する説明として、正しいのはどれですか。</sentence>
		<choice>ディスク障害によるファイルの損失を防ぐため、同じREDOログ・グループのメンバーは同一ディスクに配置します。</choice>
		<choice>REDOログ・ファイルは常にアクセスされるため、新しいREDOログ・ファイルを追加する場合は、Oracle Serverを停止する必要があります。</choice>
		<choice correct="true">ログ・スイッチが発生すると、LGWRの書き込み先が次のREDOログ・グループに変更されます。</choice>
		<choice>同じREDOログ・グループの各メンバーには、それらを一意に識別するために異なるログ順序番号が割り当てられます。</choice>
		<comment></comment>
	</question>
	<question>
		<sentence>「SELECT TO_CHAR(4567, '000,000.99') FROM dual;」の結果を選択してください。</sentence>
		<choice correct="true">004,567.00</choice>
		<choice>4,567</choice>
		<choice>4,567.00</choice>
		<choice>004,567</choice>
		<comment>TO_CHARなど変換関数の数値書式では「9」や「0」を1桁の数値とみなします。「0」は先行0を表示するし、「9」は先行0を表示しません。</comment>
	</question>
	<question>
		<sentence>「CREATE TABLE ... AS SELECT ...」によって表のコピーを作成した場合、同時にコピーされる制約を選択して下さい。</sentence>
		<choice correct="true">NOT NULL制約</choice>
		<choice>PRIMARY KEY制約</choice>
		<choice>FOREIGN KEY制約</choice>
		<choice>CHECK制約</choice>
		<comment>「CREATE TABLE ... AS SELECT ...」によって表のコピーを作成した場合は、NOT NULL制約のみコピーされます。</comment>
	</question>
	<question>
		<sentence>EMP表に設定されているPRIMARY KEY制約（制約名:EMP_PK）があり、FOREIGN KEY制約（制約名:EMP_FK）によって参照されています。このPRIMARY KEY制約を使用不可にするためのSQL文について、正しいものを選択して下さい。</sentence>
		<choice correct="true">ALTER TABLE emp DISABLE PRIMARY KEY CASCADE;</choice>
		<choice>ALTER TABLE emp DISABLE PRIMARY KEY CASCADE CONSTRAINTS;</choice>
		<choice>ALTER TABLE emp DISABLE (emp_pk, emp_fk);</choice>
		<choice>ALTER TABLE emp DISABLE CONSTRAINT emp_pk AND emp_fk;</choice>
		<comment>FOREIGN KEY制約により参照されているPRIMARY KEY制約を無効化する際には、CASCADEオプションを指定し、依存するFOREIGN KEY制約ごと無効化します。</comment>
	</question>
	<question>
		<sentence>UNDO表領域に関する説明として正しいのはどれですか。選択してください。</sentence>
		<choice correct="true">常にローカル管理表領域となる</choice>
		<choice>オプション設定することによりディクショナリ管理表領域に設定できる</choice>
		<choice>他のオブジェクトも格納できるが推奨されない</choice>
		<choice>チューニングの観点から、エクステント・サイズはオプションによって設定できる</choice>
		<comment>UNDO表領域は自動UNDO管理の時に使用するUNDOセグメント専用の表領域です。必ず、ローカル管理表領域になります。</comment>
	</question>
	<question>
		<sentence>EMP表のJOB列とDEPTNO列に対し、EMP_IDXという索引を作成するための正しいSQL文を選択して下さい。</sentence>
		<choice correct="true">CREATE INDEX emp_idx ON emp(job, deptno);</choice>
		<choice>CREATE INDEX emp_idx (emp.job, emp.deptno);</choice>
		<choice>CREATE INDEX emp_idx ON emp(job) AND emp(deptno);</choice>
		<choice>CREATE INDEX emp_idx emp(job, deptno);</choice>
		<comment>複数列に索引を作成する場合は、列名をカンマ(,)でつなげます。</comment>
	</question>
	<question>
		<sentence>以下のSQL文を実行してEMP_SYMというシノニムを作成した場合の正しい記述を選択して下さい。

CREATE PUBLIC SYNONYM emp_sym FOR scott.emp;</sentence>
		<choice>そのシノニムを作成したユーザーのみ、EMP_SYMを使用できる。</choice>
		<choice>全てのユーザーがEMP_SYMを使用して、EMP表にアクセスできる。</choice>
		<choice correct="true">EMP表のオブジェクト権限を付与されたユーザーのみ、EMP_SYMを使用してEMP表にアクセスできる。</choice>
		<choice>シノニムを作成したユーザーでも、シノニムのオブジェクト権限を付与されない限り、EMP_SYMにアクセスできない。</choice>
		<comment>PUBLICオプション付きで作成されたシノニムは全ユーザーが使用することができます。しかし、オブジェクト権限を持たないユーザーはscottユーザーのemp表にアクセスすることはできません。</comment>
	</question>
	<question>
		<sentence>SYSTEM表領域に関する説明として、誤っているものはどれですか。</sentence>
		<choice>データベース作成時に作成される。</choice>
		<choice>データ・ディクショナリとストアド・プログラム・ユニットが格納される。</choice>
		<choice correct="true">すべての索引セグメントが格納される。</choice>
		<choice>オフラインにすることができない。</choice>
		<comment>SYSTEM表領域はデータベースの内部処理に必要なデータ・ディクショナリを含む重要な表領域です。データベース作成時に作成され、常にオンラインである必要があります。通常、ユーザー・データはSYSTEM表領域には格納しません。</comment>
	</question>
	<question>
		<sentence>データベースの記憶領域階層に関する説明として、正しいのはどれですか。</sentence>
		<choice>表領域は、データ・ファイルと1対1に対応する。</choice>
		<choice>セグメントは、複数の表領域にまたがって格納されることがある。</choice>
		<choice>セグメントには、データ・ブロック単位で領域が割り当てられる。</choice>
		<choice correct="true">表領域には、複数のセグメントを格納することができる。</choice>
		<comment>表領域の中には複数のセグメントを格納することができ、セグメントは複数のエクステントで構成されます。またエクステントは連続した複数のブロックから構成されます。表領域はOS上の1つまたは複数のファイルと対応づけられます。</comment>
	</question>
	<question>
		<sentence>自分が所有するDEPT表に対して、SELECT権限を付与したユーザーを確認するためのデータ・ディクショナリとして、正しいものを選択して下さい。</sentence>
		<choice correct="true">USER_TAB_PRIVS_MADE</choice>
		<choice>USER_TAB_PRIVS_RECD</choice>
		<choice>USER_COL_PRIVS_MADE</choice>
		<choice>USER_COL_PRIVS_RECD</choice>
		<comment>自分が付与した表のオブジェクト権限を確認する際には、USER_TAB_PRIVS_MADEを検索します。逆に自分が付与されているオブジェクト権限を確認する際にはUSER_TAB_PRIVS_RECDになります。
また、表単位ではなく列単位のオブジェクト権限はUSER_COL_PRIVS_MADE、RECDで確認します。</comment>
	</question>
	<question>
		<sentence>NATURAL JOIN句を使用すると、（　　）。</sentence>
		<choice correct="true">同じ名前の列で自動的に結合を行える</choice>
		<choice>指定した列名での結合を行える</choice>
		<choice>直積演算と同じ結果が返される</choice>
		<choice>エラーになる</choice>
		<comment>自然結合は指定された二つの表から、同じ名前の列を自動的に結合します。</comment>
	</question>
	<question>
		<sentence>TRUNC(TO_DATE('01-08-24', 'YY-MM-DD'), 'MM')の結果として、正しいものを選択してください。ただし、デフォルトの日付書式は'YY-MM-DD'とします。</sentence>
		<choice correct="true">01-08-01</choice>
		<choice>01-09-01</choice>
		<choice>エラー</choice>
		<choice>01-01-01</choice>
		<comment>TRUNC関数は切り捨てをする関数ですが、数値と日付に対して使用できます。TRUNC(日付,レベル)と記述し、レベルをMMと指定すると月のレベルで切り捨て、すなわち日を切り捨てます。</comment>
	</question>
	<question>
		<sentence>インスタンス起動時に、デフォルトでは起動しないプロセスはどれですか。</sentence>
		<choice>プロセス・モニター（PMON）</choice>
		<choice>ログ・ライター(LGWR)</choice>
		<choice correct="true">アーカイバ（ARCn）</choice>
		<choice>システム・モニター（SMON）</choice>
		<comment>ARCnはアーカイブログモードの時のみ起動するプロセスです。</comment>
	</question>
	<question>
		<sentence>SQL*Plusからデータベースを作成する場合、あらかじめ用意しておく必要があるのはどれですか。</sentence>
		<choice>制御ファイル</choice>
		<choice correct="true">初期化パラメータ・ファイル</choice>
		<choice>トレース・ファイル</choice>
		<choice>REDOログ・ファイル</choice>
		<comment>CREATE DATABASE文を実行する前に必要なバラメータを記述した初期化パラメータファイルをあらかじめ準備しておく必要があります。</comment>
	</question>
	<question>
		<sentence>次のようにEMP_VUビューを定義しました。

CREATE VIEW emp_vu AS SELECT * FROM emp WHERE deptno=20 WITH CHECK OPTION;

このとき、以下のDML文の中で、エラーになるものを選択して下さい。ただし、元表には制約は定義されていないものとします。</sentence>
		<choice>UPDATE emp_vu SET sal=sal+100 WHERE deptno=20;</choice>
		<choice>UPDATE emp_vu SET deptno=20 WHERE deptno=10;</choice>
		<choice>DELETE FROM emp_vu;</choice>
		<choice correct="true">UPDATE emp_vu SET deptno=30 WHERE deptno=20;</choice>
		<comment>WITH CHECK OPTION句は、ビューを通じて実行されたINSERT及びUPDATEがビューで選択されない行を作成できないようにします。</comment>
	</question>
	<question>
		<sentence>REDOログ・ファイルを構成する指針として、正しいものはどれですか。</sentence>
		<choice>ディスク障害によるファイルの損失を防ぐため、REDOログ・グループ毎にメンバーの数を変更します。</choice>
		<choice correct="true">ディスクI/Oの競合を避けるため、REDOログ・ファイルとデータ・ファイルを異なるディスクに配置します。</choice>
		<choice>チェックポイントの頻度を少なくするために、REDOログ・ファイルのサイズを小さくします。</choice>
		<choice>REDO情報の書き込みを最適化するため、REDOログ・ファイルのサイズがREDOログ・バッファの倍数になるようにします。</choice>
		<comment>REDOログ・ファイルはアクセスが非常に多いファイルです。通常はデータ・ファイルとは別のディスクに配置してディスクI/Oを分散します。</comment>
	</question>
	<question>
		<sentence>CREATE USER文を使用してユーザーを作成する時に、指定できないパラメータはどれですか。</sentence>
		<choice>使用するプロファイル名</choice>
		<choice correct="true">デフォルト・ロールの名前</choice>
		<choice>表領域のクォータの割当て</choice>
		<choice>ソート時に使用する表領域の名前</choice>
		<comment>デフォルト・ロールはユーザー作成後に下記SQL文で設定します。
ALTER USER ユーザー名 DEFAULT ROLE ロール名 ;</comment>
	</question>
	<question>
		<sentence>SAL列の値を、「\5,000」のように表示したいときの適切なSQL*Plusコマンドを選択してください。</sentence>
		<choice correct="true">COLUMN sal FORMAT L9,999</choice>
		<choice>COLUMN sal FORMAT TO_CHAR('L9,999')</choice>
		<choice>COLUMN sal TO_CHAR('L9,999')</choice>
		<choice>BREAK sal FORMAT L9,999</choice>
		<comment>SQL*Plusの書式設定は次の文を使用します。
COLUMN 列名 FORMAT 表示形式</comment>
	</question>
	<question>
		<sentence>アラート・ファイルに、チェックポイントが完了しない、またはREDOログ・グループのアーカイブが完了しないために、LGWRが頻繁に待機していることが記録されました。LGWRの待機を解消するためにおこなう処理として、適切なものはどれですか。</sentence>
		<choice>新規REDOログ・メンバーを追加する。</choice>
		<choice correct="true">新規REDOログ・グループを追加する。</choice>
		<choice>REDOログ・バッファのサイズを大きくする。</choice>
		<choice>LOG_CHECKPOINT_TO_ALERT初期化パラメータをFALSEに設定する。</choice>
		<comment>チェックポイントが完了しない、またアーカイブが完了しないのは、カレントでなくなった瞬間から次にカレントになるまでの時間が短いことが、想定されます。ロググループを追加すれば解消することが可能です。</comment>
	</question>
	<question>
		<sentence>次のSQL文に関する説明として正しいのはどれですか。
ALTER SYSTEM SET undo_retention = 900;</sentence>
		<choice correct="true">UNDOデータを900秒保存する。</choice>
		<choice>UNDOデータを過去900エントリ分保存する。</choice>
		<choice>UNDO_RETENTIONパラメータは動的に変更できないのでエラーになる。</choice>
		<choice>1トランザクション当たり、UNDO表領域を上限900ブロックまで使用できる。</choice>
		<comment>undo_retentionパラメータはUNDOデータを何秒間保持するのかを指定する。</comment>
	</question>
	<question>
		<sentence>PCTFREEに関する説明として、正しいのはどれですか。</sentence>
		<choice>データベース・ブロック内に、PCTFREEで設定した値以上の空き領域が出来る
と、空きリストに登録される。</choice>
		<choice correct="true">可変長型データがUPDATE文により、長くなった時のための空き領域をデータベース・ブロック内に確保する。</choice>
		<choice>エクステント内に、PCTFREEで設定した値以上の空き領域が出来ると、空きリストに登録される。</choice>
		<choice>可変長型データがUPDATE文により、長くなった時のための空き領域をエクステント内に確保する。</choice>
		<comment>PCTFREEパラメータはデータ・ブロックの使用を制御するものです。PCTFREEで設定したパーセンテージ分をUPDATE用の空領域として確保します。</comment>
	</question>
	<question>
		<sentence>プロファイルのパスワード管理機能では実行できないのはどれですか。</sentence>
		<choice>パスワードの有効期限</choice>
		<choice>パスワード履歴</choice>
		<choice>パスワード複雑度のチェック</choice>
		<choice correct="true">パスワードの自動変更</choice>
		<comment>プロファイルを使用することでパスワードに様々な制限をかけることが可能です。しかし、パスワードの自動変更機能はありません。</comment>
	</question>
	<question>
		<sentence>顧客情報を格納しているcustomers表には、顧客の年齢層を表すage列があります。この列には、顧客の年齢層を表す6つの値のいずれかが格納されます。また、この列の値はほとんど変更されることがありません。この列に索引を作成する場合、最適な索引の種類はどれですか。</sentence>
		<choice>Bツリー索引</choice>
		<choice correct="true">ビットマップ索引</choice>
		<choice>逆キー索引</choice>
		<choice>ファンクション索引</choice>
		<comment>ビットマップ索引を使用すると最適なのは次のような状況です。
・更新が少ない
・値の種類が少ない
・ORを使用した検索が多い</comment>
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
