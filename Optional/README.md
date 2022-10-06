# Optional
![Optional](Optional.gif)

## 概要
Swiftの変数は基本的にはnilを許容しませんが、Optional型を使用することで特別にnilを許容する変数を定義することができます。Optional型の宣言をするときは、変数の後ろに`?`を記述します。Optional型にすると、値が代入されていないのでnilが初期値に設定されています。
以下の2つの例は記述方法が違うだけで、同じ意味です。
```
var a: String?
```
```
var a: Optional<String>
```
また、Optional型は値を保持していない可能性があるため、非オプショナル型の変数と同じように扱う事ができません。Optional型の値に対して操作を行う場合は、一度unwrapし、値を取り出す必要があります。

## 前提知識
- [if](https://github.com/lifeistech/toybox/tree/main/if)

## 関連
- [UISwitch](https://github.com/lifeistech/toybox/tree/main/UISwitch)
