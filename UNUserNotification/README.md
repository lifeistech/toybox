# UNUserNotification
![UNUserNotification](UNUserNotification.gif)

## 概要
UNUserNotificationは、時間や場所のような条件に基づいたローカル通知を実装することができます。通知のリクエストには、通知する内容とタイミングの情報を含めることで、指定した時に通知がされるようになります。登録できる最大のローカル通知の数は64個です。ローカル通知はデバイス内で完結するのでネットワークのオフライン状態でも通知がくるというメリットがあります。

## どう使われているか
- リマインダーアプリの通知
- カレンダーアプリの予定通知

## 前提知識 
- [if](https://github.com/lifeistech/toybox/tree/main/if)
- [for](https://github.com/lifeistech/toybox/tree/main/for)
