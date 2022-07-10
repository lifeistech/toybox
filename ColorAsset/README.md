# ColorAsset
![ColorAsset](ColorAsset.png)

## 概要
ColorAssetは、色データを格納しておくオブジェクトのことです。アプリ内で複数回使用したい配色をアセットとして定義しておくことで、簡単に実装することができます。また、ダークモード用のカラーアセットを簡単に定義できることもメリットの一つです。

## どう使われているか
- Appleデフォルトアプリのダークモード
- Twitterのダークモード(ダークブルーとブラックの2種類あります)
- ウィジェットのダークモード

## 実装方法
1. NavigatorからAssetsをクリックします
2. 右クリック>New Color Setを選択します
3. ColorAssetの名前を定義し、色をsRGBやSystem Colorから選びます
4. ViewController.swiftから`UIColor(named: colorAssetName)`で参照できます
