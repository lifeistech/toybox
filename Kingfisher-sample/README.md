# Kingfisher
![Kingfisher](Kingfisher.png)

## 概要
Kingfisherは、WebからURLで表示した画像を一度ダウンロードしてキャッシュするためのライブラリです。導入することで、データの読み込みを速くしたり、通信量を減らすことができます。画像のキャッシュを行うとアプリの容量がだんだん大きくなってしまうので、容量を空けるためにはキャッシュの削除を行う必要があります。

## 実装方法
1. Xcodeのサイドバーからプロジェクトを選択します
2. Package Dependenciesのタブを選択します
3. +ボタンを押し、`https://github.com/onevcat/Kingfisher`で検索します
4. Kingfisherを選択し、add packageをクリックします
5. ViewConrtoller.swiftで`import Kingfisher`でimportすることができます
