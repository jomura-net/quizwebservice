<?xml version="1.0" encoding="UTF-8" ?>
<quiz>
  <title>CompTIA</title>
  <description>PCの運用管理</description>
  <group name="A+ 2003">
	<question>
		<sentence>顧客から、必ずVGAモードで起動してしまうとの苦情がありました。A+認定技術者が調査したところ、BOOT.INIにおていVGAがデフォルトで指定されていることが判明しました。このオプションを削除するコマンドはどれですか。＜A+ OS Technologies＞</sentence>
		<choice correct="true">BOOTCFG /rmsw /bv /id1</choice>
		<choice>SETBOOTVIDEO /novga</choice>
		<choice>BOOTDELETE /vga</choice>
		<choice>RESET /video</choice>
		<comment>BOOTCFGコマンドは、BOOT.INIファイルの設定を構成、照会、または変更するコマンドです。標準のVGAモードのスイッチを削除するには、指定したオペレーティングシステムエントリのオペレーティングシステムロードオプションを削除する場合は、/rmsw を使用します。
A+2003になってから、BOOT.INIに関連や、ブート関連のコマンドの出題が増えていますので確認してください。</comment>
	</question>
	<question>
		<sentence>10BASE2で利用される同軸ケーブルは以下のうちどれですか。</sentence>
		<choice>RG58　OHM75</choice>
		<choice correct="true">RG58　OHM50</choice>
		<choice>RG8　OHM75</choice>
		<choice>RG8　OHM50</choice>
		<comment>10BASE2では、直径5mmの同軸ケーブル(Thin同軸)を利用し、BNCコネクタを利用します。この同軸ケーブルの規格は、RG58で、50オーム(OHM)のものを使用します。A+2003 Core試験ではネットワークに関する問題も多少突っ込んだものになっています。光ファイバに関しても良く出題されますので、トポロジやメディア、ネットワークデバイス、コンポーネント等の仕様などについて一とおりおさえておきましょう。</comment>
	</question>
	<question>
		<sentence>マザーボード上のROMともっとも関係がないものはどれですか。</sentence>
		<choice>POST</choice>
		<choice>BIOS</choice>
		<choice>セットアッププログラム</choice>
		<choice>ブートストラップローダ</choice>
		<choice correct="true">OSブートセクタ</choice>
		<comment>マザーボード上のROMに格納されているのは、BIOS、POST、ブートストラップローダ、セットアッププログラムです。一方、OSブートセクタはハードディスクやフロッピーディスクに格納されているため、ROMとは直接関係ありません。</comment>
	</question>
	<question>
		<sentence>現在使用中の通信用ソフトウェアは、モデムが自動でダイヤル接続しないようです。まず始めに手動で接続の確認を行おうと思います。モデムが「5432-1234」にダイヤル接続するためのATコマンドはどれですか。&lt;A+ Core Hardware&gt;</sentence>
		<choice>AT54321234</choice>
		<choice correct="true">ATDT54321234</choice>
		<choice>ATM54321234</choice>
		<choice>AT54321234#</choice>
		<comment>モデムに送るATコマンドは、最初にAT（ATtention）から始めます。次に、ダイヤルコマンドD（Dial）、次にトーン回線ならばT（Tone）またはパルス回線ならばP（Pulse）、最後に電話番号の順序に入力します。</comment>
	</question>
	<question>
		<sentence>Windows XPのBOOT.INIファイルで1つ目のパーティションを指定する数値はどれですか。&lt;A+ OS Technologies&gt;</sentence>
		<choice>0</choice>
		<choice correct="true">1</choice>
		<choice>3</choice>
		<choice>4</choice>
		<comment>BOOT.INIファイルで、通常のディスクBIOS経由で起動するHDDの指定は、multi構文で記述されます。multi()はコントローラの番号で通常のIDE接続の場合は0になります。IDE接続に限定した場合、disk()は常に0(SCSI構文で利用され、multi構文では無視)、rdisk()は、0から3で指定しハードディスク番号を指します。Partition()はパーティション番号を指定し、1からはじまります。従って1つ目のパーティションを指定する数値は1になります。Partition以外は0から記述が始まるのが特徴です。</comment>
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
