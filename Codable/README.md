# Codable
![Codable](Codable.gif)

## 概要
CodableはCodableに準拠したStruct(構造体)を他のデータ形式と相互変換するための仕組みです。 主に、JSON形式（通信などで利用する形式）との変換で使われます。 これを利用することで簡単かつ安全にデータを変換することができます。

 - String・Int・Double・Data・Date・URLは常にCodableな型です。他の型でCodableを利用する場合は、自分でCodableに準拠させる必要があります。
