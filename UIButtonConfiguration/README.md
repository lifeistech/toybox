# UIButtonConfiguration
![UIButtonConfiguration](UIButtonConfiguration.gif)

## 概要
UIButtonConfigurationは、ボタンの見た目や動作、内容などの設定をするためのものです。iOS15以降、ボタンの種類が増え、ボタンスタイルがPlain, Gray, Tinted, Filledの4種類が選択できるようになりました。iOS14以前のバージョンに対応するアプリではStoryboard上のStyleではDefaultを選択し、ViewControllerでカスタマイズします。すでに画面上にあるボタンの見た目を変える処理を実装するときは、新しいConfigurationに書き換えて反映させます。

## どう使われているか
- AppStoreのアプリダウンロードボタン
