FE8Nとは、改造FEのベースとする為に作った改造FEです

# 変更メモ

##ステータス
HPの上限は、クラスHP上限を参照します  
ただし敵将はクラスHP上限が80未満でも80まで引き上げられます

敵のステータスは上限突破させています  
味方はしてません

##システム

###オートセーブ切り換え
毎ターンにする事で、多少お手軽ゲームになります。  
なお、それもあってファルコン法は不能にしてあります。

###救出条件変更
騎兵救出不可（ただしスリープ中は可能）  
バサーク中の味方ユニット救出(+救出中の物交換)が可能  
輸送隊にチェックが入っていると救出出来なくなる

###攻速減算値
（体格 → 体格+技/4）

###杖
杖は魔力ではなく、武器レベルで性能向上する仕様

###武器・杖盗み
力の制限が無い蒼炎・暁式の盗みです  
ただし敵将(+輸送隊にチェックが入った敵)からは盗めません

###機動力向上
アーマーナイト・グレートナイト・マージナイト・トルバドール・ヴァルキュリア・フォレストナイト・マスターロード

###武器
光魔法は魔物に2倍特効（なおイーヴァルディ3倍）  
レイピアの騎馬系特効を修正（タルヴォスとかにも効きます）  
遠距離魔法が軽量弱威力化(イクリプスは相対的に強化)  
ルナ > ルイン  
リザイアの吸収量半減  
エイルカリバー復帰  
レギンレイヴの特効剥奪  

###アイテムがやたらと交換できる

###支援
5人とならいくらでもと結べます  
ただし支援効果には上限が設けてあります  
なお、A支援は一人とだけ結べます

###武器S補正
威力+1・命中+10  
攻速落ち無視

###Ｌでアニメ切り換え
アニメオフの状態でもLを押し続けている間はアニメオンになります。逆も可  
Aおしっぱでスキップ

###エフラム編の後半の敵をちょっと変えた

###状態異常弱体化
敵将は状態異常を1ターンで解除します。  
味方の状態異常は3ターンに減りました

##武器変化
杖は他の武器レベルSと両立が可能です

###僧侶
（+光）
###魔道士
（+光）
###シャーマン
（+理）
###サマナー
(-杖)
###マージナイト
(-杖 +光)
###パラディン
(+杖C)
###ファルコンナイト
(+杖E +剣D)
###ウォーリア
(弓レベルC)
###ローグ
(+杖C)

##追加データ
###パッチ系(一部)
* コマンド01ハック
* コマンド48ハック
* まほーぱっち
* sound_mixer
* Native instrument 
* DrumFix(修正版)
* 16 tracks/12 sounds patch

###アニメ
* パラディン杖男女
* アサシン弓
* ラガルトアサシン剣弓
* 新ジェネラル斧
* 新バーサーカー
* ファルコンナイト杖
* ドラゴンマスター斧
* ローグ杖
* アーマーナイト剣
* アーマーナイト斧
* ファルコンナイトPaledit
* ドラゴンマスターPaledit
* ワイバーンナイトPaledit
* ローグPaledit

###楽器
* チューバ(FE7)
* マリンバ(FE7)
* オーケストラヒット(FE6)

###MIDI
* 新紋章より「決起のとき」(100)

###魔法
* 入れてない

##スキル
[奥義]は武器レベルSが発動条件  

###個人スキルの付け外し
####効果設定
PFEで幸運成長から右へ4番目の2Bytes

|1|2|4|8|
|---|---|---|---|
|大盾|祈り|カリスマ|恐怖|
|キャンセル|怒り|王の器|待ち伏せ|
|連続|エリート|再行動|すり抜け|
|（練達予定?）|（無い）|流星|月光(兵種奥義が優先)|

####アイコン設定
"Engine Hacks\Skills\UNIT.bin"を編集する

###回避+15（ソードマスター）

###回避-20（騎兵）
屋内の騎乗兵は回避マイナス

###瞬殺（127ダメージ > ダメージ5倍）
瞬殺ボーナス無し  
直接攻撃でのみ発動

###天空
必殺と重複しない  
間接攻撃では発動しない

###流星
剣のみ
アサシンでは発動しない  
間接攻撃では発動しない  
0.5～7.5倍の攻撃

###怒り・キャンセル
闘技場では発動しない

###カリスマ
支援効果扱い  
よって支援効果上限に引っかかる

###待ち伏せ
相手の待ち伏せを無効化

###連続
勇者武器を装備すると発動しない

###必的
発動で大盾・祈り・神盾を無効化

###見切り
神盾の効果を軽減  
確率スキルではないが怒り・待ち伏せも無効化

##空き領域マッピング

4540B0～
アニメーションコマンドパッチ

5BA470～(元アイテムアイコン)  
空き

A9DDDC～(元サウンドルーム)  
ちょっと使ってる

E47180～  
空けた

EFB330～  
まほーパッチ

EFC330～  
NativeInstrumentMap  
その他諸々のデータ


