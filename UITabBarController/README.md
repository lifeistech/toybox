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
1. TabBarControllerの[Is Initial View Controller]にチェック
2. ViewController.swiftを追加
3. StoryboardのViewControllerのクラスを設定
4. ViewControllerごとにTabbarItemを設定
    - SelectedImage→タブが選択された時のImage
    - Image→デフォルトのImage

### ViewControllerを追加する場合
1. ViewControllerをstoryboardに追加
2. TabBarControllerからctrlキーを押しながらドラッグし、view controllersを選択
3. 上と同じように設定
