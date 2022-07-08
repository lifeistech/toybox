# extension
![extension](extension.gif)

## 概要
extensionは、”拡張する"という意味で、このコードを書くことでUILabelやIntなどの元から用意されているclassや自分で定義したclass, structに対して機能を拡張します。以下のようにextensionにwhereを付加した場合、型が条件を満たす場合のみ有効になる定義を追加することもできます。
```
//Intの場合のみ有効になる定義
extension Array where Element == Int {
    // 配列の各要素の総和を返す
    func sum() -> Int {
        return reduce(0, +)
    }
}
```

## 関連
- [UIPickerView](https://github.com/lifeistech/toybox/tree/main/UIPickerView)
