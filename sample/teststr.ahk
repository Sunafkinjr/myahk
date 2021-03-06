﻿def := True
if def
    MsgBox, , 変数真偽値でif。, 変数が初期化されている。 ,5
if !undef
    MsgBox, , 変数真偽値でif。, 初期化されていない変数をnotで判定できるか。 ,5
if !""
    MsgBox, , 真偽値でif。, 空文字列は真か偽か。 ,5

initstr :=
abc := "abcdefg"
c := "c"
emptystr := ""
MsgBox , , 代入 右側に何もない時 , % initstr ,5
;次の行の 影響はない。

MsgBox, , 代入 “”で囲んで代入した場合。, % abc ,5
;代入された文字列には引用符が含まれていないことを確認。

MsgBox, , 代入 “”で代入した場合。, % emptystr ,5
;代入された文字列には引用符が含まれていないことを確認。



MsgBox, , 文字列の長さ確認。(StrLen)。, % StrLen(abc),5
;文字列の長さを測る関数は正しく動いている。

StringLen, ln, c
MsgBox, , 文字列の長さ確認。(StringLen), % ln ,5
;関数ではなくコマンドで書いても結果は同じ。

MsgBox, , 文字列の長さでinistrの確認。, % StrLen(initstr) ,5
MsgBox, , 文字列の長さでemptystrの確認。, % StrLen(emptystr) ,5
MsgBox, , 文字列の長さでabcの確認。, % StrLen(abc) ,5
MsgBox, , 未定義の変数を文字列の長さで計った時。, % StrLen(undef) ,5
;空文字列またはnull? 的な場合は長さ0として扱われることを確認。



;If 文で空文字列を判定する時の書き方。
if initstr =
    MsgBox, , 空文字列を判定, 右側に何も書かない。,5
if initstr = ""
    MsgBox, , 空文字列を判定,  引用符で囲むと不成立。,5
;括弧で囲まない場合=の右側はどんなときも文字列として扱われる。
;引用符は書く必要がないというか書いてはいけない。

if (initstr =)
    MsgBox, , 括弧で囲んで空文字列を判定, 右側に何も書かない不成立。,5
if (initstr = "")
    MsgBox, , 括弧で囲んで空文字列を判定,  引用符で囲むと成立。,5
;括弧で囲んだ場合、 右辺が文字列とは限らないので引用符が必要。

if !initstr
    MsgBox, , 空文字列を判定,notでも条件は成立。,5
if (!initstr)
    MsgBox, , 括弧で囲んで空文字列を判定, notでも条件は成立。,5
;真偽だけで=がない場合はかっこがあってもなくても問題ない。


;条件が複数になるなど if 文の中が複雑になる時の書き方。
if 1 = 1 and initstr =
    MsgBox, , and で繋ぐ複雑な判定。, 右側に何も書かない時不成立。,5
;かっこがついていない時は比較として装備されるので=の右側は文字列扱い。
;つまり次のように判定される。
;1 = "1 and initstr ="
if 1 = 1 and initstr =""
    MsgBox, , and で繋ぐ複雑な判定。, 引用符で囲んでもうまくいかない。,5
;この場合も同様に次のように判定される。
;1 = "1 and initstr ="""
if (1 = 1 and initstr= )
    MsgBox, , and で繋ぐ複雑な判定。, かっこを追加する。右側には何も書かない。,5
;括弧で囲まれているのでカッコ内を実行してから、その結果を真偽値として判定する。
;二つの条件を and でつないで判定している。
;=の右側は文字列である保証はないので引用符が必要なのはこれまでのテストで確認済み。

if (1 = 1 and initstr= "")
    MsgBox, , and で繋ぐ複雑な判定。, 括弧で囲んで引用句を使うと OK。,5
;括弧で囲まれているので instr の右側に引用符を入れることで空文字列と比較できる。

;念のため空文字列ではない時も試してみる。
if 1 = 1 and abc = abcdefg
    MsgBox, , and で繋ぐabc判定。, 右側の文字列を引用符で囲まない時不成立。,5

if 1 = 1 and abc = "abcdefg"
    MsgBox, , and で繋ぐabc判定。, 右側を引用符で囲むとき不成立。,5

if (1 = 1 and abc = abcdefg)
    MsgBox, , and で繋ぐabc判定。, 括弧で囲んで引用符では囲まない時不成立。,5

if (1 = 1 and abc = "abcdefg")
    MsgBox, , and で繋ぐabc判定。, 括弧で囲んで引用符でも囲むときok,5
Return
