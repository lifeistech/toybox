# UITabBarController
![UITabBarController](UITabBarController.gif)

## 概要
UITabBarControllerは、複数のViewControllerを管理し、選択によって表示を切り替えることができます。

## どう使われているか
- TwitterのBottomメニュー
- InstagramのBottomメニュー
- LINEのBottomメニュー

## 実装方法
### TabBarControllerの追加
1. TabBarControllerの is initial View Controllerにチェック
2. ViewController.swift追加
3. storyboardのViewControllerのクラスを設定
4. ViewControllerごとにTabbarItemを設定、selectedImage→タブが選択された時のimage、Image→デフォルトのiamge


### viewControllerを追加する場合
1. ViewControllerをstoryboardに追加
2. TabBarControllerからctrlキーを押しながらドラッグし、view controllersを選択
3. 上と同じように設定
