#魔力分離パッチ
空き領域を指定したEA.txtを読み込ませて使います。  
無改造ロム以外に当てた場合、何かしらの改造と干渉する可能性はあります。ご了承下さい。
##ユニット設定
![demo](http://i.imgur.com/PM3TYoD.png)  
この部分です。  
![demo](http://i.imgur.com/E5ZowzC.png)  
言うまでもないかもしれませんが「16進数」です。

##クラス設定
![demo](http://i.imgur.com/BhJxLsC.png)  
この部分です。

![demo](http://i.imgur.com/KZsEaa0.png)  
左から順に、「CCボーナス」「成長率」「初期値」となっております。  
バーサーカー等の一部クラスはこの部分が最初から設定されていますが、未だに何に利用されているか分からない没データの可能性が高い欄なので使います。

![demo](http://i.imgur.com/fx28VRf.png)  
上限は体格上限を流用しています。
##ドーピング
![demo](http://i.imgur.com/2tNlSSm.png)  
ボディリングを使うと増やせます。説明等は変えた方がいいと思います。  
体格の値を変えると魔力を増やせます。

##攻速
攻速計算を変えている人は要注意。このパッチを当てるとデフォルトの計算式に戻ります。
 * Atk_Spd.asm
 * Atk_Spd.gba

自分の攻速計算式が使いたい人は、asmを編集・gbaに変換してください。ASM知識必須。

###救出値を変えてる人も、ちょっと変になるかもしれません