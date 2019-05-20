# 私が楽になるためのAutoHotkeyのスクリプト集
私が頻繁に行う定型作業を自動化するためのスクリプト集です。
 
私の環境に強く依存しているのでAutoHotkeyのヒントとして使ってください。

# ダウンロード&インストール。

* GitHubのページに表示されるClone or downloadボタンをクリックしてDownload ZIP をクリックしてください。
* ZIP ファイルを展開して、お好きなディレクトリにコピーしてください。

# 使い方。
## 配布ファイルの構成。
ディレクトリ構成は次のようになります。
### lib
ライブラリ。

### ex
実験的なスクリプト。
各機能を試したりテストしたりするスクリプト。

### call_*
ファイル名の先頭にcallがつくファイルは、一つの機能を直接呼び出すための起動スクリプトです。
 
ファイル名は占有されるショートカットキーの組み合わせ、または起動される機能のライブラリ名で表されています。
 
ショートカットキーの組み合わせを覚えるのがしんどい方はこれを利用してください。
名前を変えたりショートカットを作成して覚えやすい名前を付ければマウスワンクリックで呼び出すことができます。
 
ショートカットのファイル名は、次のように表されます。

* Windows キーは win。
* Ctrl キーは ct。
* シフトキーは sft。
* それに合わせてキャラクターキーや特殊キー。

call_ winsfthome.ahkファイルは Windows + SHIFT + Home ショートカットを起動した時のファイルです。
 
ショートカットキーが割り当てられない機能については ライブラリ名と同じ名称で表されます。

* call _blogasin.ahkはlib\blogasin.ahkを呼び出し。
 
詳細は下記をどうぞ。

### full.ahk
私が頻繁に利用する自動化処理でホットキーに対応するもの全てを一度に割り当てます。

初めて利用する時はタスクトレイアイコンから右クリックしてconfigで設定画面を開いて必要なパラメータを入力してください。
そして必ず再起動させてください。

## ホットキー。
スクリプト常駐によって占有されるホットキーは次の通りです。

### insert

* はてなブログの新規エントリーを用意する。
* 関連するlib blogentry

### win + =

* 作業用ウィンドウで開いているページを編集中のブログにリンク挿入する。
* 関連するlib blogrefemb

### win + shift + =

* 作業用ウィンドウで開いているページを編集中のブログに選択文字列でリンク挿入する 。
* 関連するlib blogrefsel

### win + ctrl + =

* 作業用ウィンドウで開いているGithub 上のファイルを編集中のブログに挿入する。
* 関連するlib blogrefgithub

### win + home

* Chrome の新規タブで音声検索する。
* 関連するlib googlesearch

### win + shift + home

* 常用アプリケーションのウィンドウサイズと位置の調整。
* 関連するlib adjust

### win + 2

* Google Chrome に表示されているページをはてブする 。
* 関連するlib hatebucrm

### win + shift + 2
* Firefox で表示しているページをはてブする 。
* 関連するlib hatebufox

### pause

* 音声入力ウィンドウのマイクをオンにする。
* 関連するlib mmic

### Win + pageup

* マウスポインターをウィンドウの両端で一定期間停止させるとスクロールさせる。
* 関連するlib scrollhover


