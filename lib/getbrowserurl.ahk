﻿getbrowserurl(retfocus = False){
    ; キーボードショートカットでアドオンまたは Extension を呼び出して URL を取得する。
    ; Google Chrome ではCopy All URLsで行う。
    ;https://chrome.google.com/webstore/detail/copy-all-urls/djdmadneanknadilpjiknlnanaolmbfk?hl=ja
    ;設定は ALT + C で選択中のタブのみをプレーンテキストでコピーするようにしておくこと。
    ;Firefox ではCopyTabTitleUrlアドオンを利用する。
    ;https://addons.mozilla.org/ja/firefox/addon/copytabtitleurl/
    ;ALT + C で URL のみをクリップボードにコピーできるように設定しておく。
    Send,!c
    ;複数タブの URL をコピーできるタイプのエクステンションは改行コードを含むことがあるので削除しておく。
    Clipboard := RegExReplace(Clipboard, "\n", "")
    Clipboard := RegExReplace(Clipboard, "\r", "")
    return Clipboard
}
