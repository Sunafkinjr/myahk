﻿;作業用ウィンドウで開いているページを編集中のブログに選択文字列でリンク挿入する 。
blogrefsel(workurl){
    global work
    ; 作業ウィンドウ探す。
    if (!work or work = 0)
        detectwork(workurl)
    ;必要なウィンドウが揃ってない場合は警告をメッセージを表示してアプリケーションを終了する。
    warnBox(work = 0, 202)
    ; 作業ウィンドウに切り替えて埋め込みたいページを全面にする。
    Sleep 100
    WinActivate,ahk_id %work%
    Sleep 100
    ; URL バーをフォーカスして URL をすべて選択してコピー 。
    getbrowserurl()
    ; クリップボードの内容を URL として取り出して埋め込みリンクの文字列を生成してクリップボードに入れる 。
    url := clipboard
    ; ブラウザのタブを切り替えながら編集ホームを探す 。
    if selecttab(work,"ブログ記事編集 - はてなブログ")
    ; 編集ホームに切り替わったらリンクを貼り付ける。
    {
        ; 入力フォームで選択中の文字をカットする。
        Sleep 100
        Send,^x
        Sleep 100
        t := clipboard
        ; URL と選択文字列から埋め込みタグ生成する。
        clipboard := "[" . url . ":title=" . t . "]"
        Sleep 100
        Send,^v
    }
    return
}
