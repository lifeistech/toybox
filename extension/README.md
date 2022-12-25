# extension
![extension](extension.gif)

## 概要
extensionは、拡張するという意味で、このコードを書くことでUILabelやIntなどの元から用意されているclassや自分で定義したclass, structに対して機能を拡張します。以下のようにextensionにwhereを付加した場合、型が条件を満たす場合のみ有効になる定義を追加することもできます。
```
//要素がIntの配列の場合のみ有効になる定義
extension Array where Element == Int {
    // 配列の値の合計値を計算
    func sum() -> Int{
        var total: Int = 0
        for element in self {
            total += element
        }
        return total
    }
}
```

## 関連
- [UIPickerView](https://github.com/lifeistech/toybox/tree/main/UIPickerView)
