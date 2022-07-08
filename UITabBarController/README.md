# UITabBarController
![UITabBarController](UITabBarController.gif)

## 概要
UITabBarControllerは、複数のViewControllerを管理し、TabBarのTabの選択によってViewControllerの表示を切り替得ることができます。

## どう使われているか
- Twitterの画面下部の表示切り替え
- Instagramの画面下部の表示切り替え
- LINEの画面下部の表示切り替え

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
