# プロジェクト名
![UINavigationController](UINavigationController.gif)

## 概要
UINavigationControllerは、画面遷移を管理するクラスです。NavigationBarや元の画面に戻るBackButtonをカスタマイズすることができます。

## どう使われているか
- 設定アプリの詳細画面
- AppStoreのアプリ詳細への遷移

## 実装方法
1. ViewControllerを選択
2. Editor → Embed In → NavigationControllerを選択
3. 2つ目のViewController配置
4. ctrlドラッグでshowを選択
5. segueを選択し、identifierを設定
