﻿;Bluetooth デバイスの一覧を開いて目的のデバイスを再接続する。
;接続されている場合は一度切断して接続を試みる。
;切断処理は画像認識では難しいのでキーボードからデバイスを探して切断ボタンを押す。
;切断接続の際にデバイスが転んで応答してくれなくなることがある。
;画像の認識に失敗すると期待しないキー入力を行なってしまうこともある。
;少々不安定なので今は利用を中止している。
;
;接続が確認できた時は trueを戻す。
;接続が確認できない場合は5秒間待機した後にリトライする。
;リトライは30回行われて最後まで接続されなかったら false を返す。

WaitBTStandby(){
    MsgBox, , ,まもなくラジオの再生が始まります。 ,5
    ;デバイスの接続を確認できるまで30回リトライして待機する。
    ;中断したい時はタスクバーのアイコンダブルクリックでウィンドウを開いてスクリプトを停止する。
    Loop, 30
    {
        ;マウスポインタの位置によっては目的の画像がハイライトされていて認識できないことがあるのでマウスポインターをすみっこに移動させておく。
        MouseMove, A_ScreenWidth, 0, 2
        ;キーボードショートカットで Bluetooth デバイス一覧表示する。
        Send,#k
        ;切断状態のデバイスを探してクリックして接続する。
        Sleep, 5000
        rd := ClickButton("images\bth163dd.bmp")
        if rd
        {
            ;クリックできたのでデバイス一覧を閉じる。
            Sleep, 5000
            Send, {Esc}
            return True
        }
        ;デバイスは接続されているようなので切断操作を行う。
        ;スペースキーで検索ボックスを開いてデバイス名を入力。
        Send, {Space}
        Sleep 1000
        Send, h-163
        ;デバイスにフォーカスを合わせて切断ボタンを押す。
        Sleep 1000
        Send, {Tab}
        Sleep 1000
        Send, {Enter}
        Sleep 1000
        Send, {Tab}
        Sleep 1000
        Send, {Space}
        Sleep, 5000
        Send, {Esc}

        ;左クリックをしていれば再接続できなくても無視して続行する。
        GetKeyState, l, LButton
        if l = D
            return True
        Sleep, 5000
    }
    ;最後まで再接続操作できなかったので失敗を返す。
    MsgBox, , ,スピーカーが見つかりませんでした。 ,5
    return False
}
