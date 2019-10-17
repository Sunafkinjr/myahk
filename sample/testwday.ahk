﻿;日時から曜日を調べるテスト。

msg := ""
;今日の曜日を数値て参照する。
today := A_WDay
msg .= ("今日の曜日は`n" . today . "`n")
;特定の年月日の曜日を調べる(答えは水曜日)。
FormatTime, wd, 20191030124056, wday
msg .= ("2019年10月30日の水曜日`n" . wd . "`n")
;配列を使って曜日を漢字で表示する。
wdayNames := ["日","月","火","水","木","金","土"]
msg .= ("今日の曜日を数値から文字にする`n" . wdayNames[today]  . "`n")
;結果の表示。
MsgBox, , 日時から曜日を調べる, % msg
