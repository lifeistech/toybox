# delegate
![delegate](delegate.gif)

## 概要
delegateは、英語で「人に任せる」という意味である通り、他のクラスに処理を任せるものです。delegateを活用することで子クラス(labelやcellなど)から親クラス(ViewController)メソッドを呼び出すなど、delegateを使用することで複数クラスにまたがる処理を円滑に実装できるメリットがあります。

### delegateの実装に必要な役割
1. protocol  
    任せる処理(デリゲートメソッド)の形をプロトコルとして定義します。プロトコルはこんな変数や関数がありますという定義(宣言)で関数の中身の実装はしません。他言語で言うインターフェースの役割に近いです。
2. 処理を任せるクラス  
    ボタンを押された時などにデリゲートメソッドで実装した処理を呼び出します。その際にprotocolを実装したクラスのインスタンスを変数delegateに設定します。
3. 処理を任されるクラス  
    定義したデリゲートメソッドの処理を実装します。

## 前提知識 
- [extension](https://github.com/lifeistech/toybox/tree/main/extension)

## 関連
- UICollectionView
