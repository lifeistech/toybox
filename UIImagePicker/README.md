#  UIImagePicker
![UIImagePicker](UIImagePicker.gif)

## 概要
UIImagePickerは、端末のカメラで撮影した写真、またはフォトライブラリにある写真を取得します。`.sourceType = .camera`でカメラ撮影を、`.sourceType = .photoLibrary`でカメラロールから写真を取得することができます。使用するためには、端末にカメラへのアクセスと写真へのアクセス権限をInfo.plistからリクエストする必要があります。

## どう使われているか
- 設定のiCloudプロフィール画像の選択画面
- メールアプリの添付画像の撮影画面
- ミュージックアプリのプレイリストカバー画像選択

## 実装方法
1. Info.plist に Privacy - Camera Usage Description と Privacy - Photo Library Usage Descriptionを追加します
2. Main.storyboardにUIImageViewを配置します
3. サンプルコードの通り、ViewController.swiftから`UIImagePickerController()`を用いて画像を取得します。

## 前提知識 
- [extension](https://github.com/lifeistech/toybox/tree/main/extension)

## 関連
- [UIButtonConfiguration](https://github.com/lifeistech/toybox/tree/main/UIButtonConfiguration)
- AVCapturePhotoOutput
