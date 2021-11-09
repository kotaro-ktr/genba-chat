# README

## users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| name               | string | null: false |
| email              | string | null: false |
| encrypted_password | string | null: false |

### Association

- has_many :room_users
- has_many :rooms, through: :room_users
- has_many :messages

## rooms テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| name   | string     | null: false                    |
| chart  | references | null: false, foreign_key: true |

### Association

- has_many :room_users
- has_many :users, through: :room_users
- has_many :messages
- has_one  :chart

## room_users テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| room   | references | null: false, foreign_key: true |

### Association

- belongs_to :room
- belongs_to :user

## messages テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| content | string     |                                |
| user    | references | null: false, foreign_key: true |
| room    | references | null: false, foreign_key: true |

### Association

- belongs_to :room
- belongs_to :user

## chart テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| room   | references | null: false, foreign_key: true |

### Association

- belongs_to :room

* 【アプリケーション名】
genba-chat

* 【アプリケーション概要】
このアプリケーションでは、土木工事・設備検査においてチャット形式でのコミュニケーションが図れます。
また、それぞれの現場において作業進捗をガントチャートで管理できます。

* 【URL】

* 【テスト用アカウント】
user1
name:test1
password:testtest1

user2
name:test2
password:testtest2

* 【利用方法】
このアプリは、ログインもしくは新規登録をした上で利用できます。
ルームを作成し、メンバーを登録した後で複数人でのメッセージのやり取りを行ないます。
なお、ルーム各々に一つに作業工程を作成し、登録することができます。
必要の都度、作業工程を確認しながらチャットします。

* 【目指した課題解決】
工事・設備検査関係者は基本的にチームで工事やメンテナンスを計画的に行うため、チーム内でのコミュニケーション・工程管理の共有が大切です。
現状、私の職場においてそのためのツールが一元化されてないという課題があったため、アプリによって一元化し進捗の可視化・コミュニケーションの円滑化を目指しました。

* 【洗い出した要件】
トップページ
* 【ボタン】
・サインイン・ログインできるボタンがある
・ログイン時はログアウトできるボタンがある
・チャットルームを作成できるページへ遷移するボタンがある
・メッセージを送信するボタンがある
・電話するボタンがある
・ビデオ通話するボタンがある
・画像を添付するボタンがある
・チャットルームの詳細画面へ遷移するボタンがある
・チャットルームを削除するボタンがある。
・チャットルームにメンバーを追加するボタンがある
・チャットルームからメンバーを削除するボタンがある

* 【表示】
・チャットルームを一覧で表示する
・メッセージを一覧で表示する


ユーザー新規登録ページ
* 【ボタン】
新規登録ボタンがある


ユーザーログインページ
* 【ボタン】
ログインボタンがある

チャットルーム作成ページ
* 【ボタン】
チャットルーム作成ボタンがある
→作成すると詳細ページへ遷移でき、ガントチャートを作成することができる。

ガントチャート作成ページ
* 【ボタン】
チャート作成ボタンがある
→クリックするとトップページへ遷移する

* 【表示】
ガントチャートを表示する

チャットルーム詳細ページ
* 【ボタン】
トップページへ遷移するボタンがある

* 【表示】
・ガントチャートを表示する
・ルームメンバーを一覧で表示する


* 【実装予定の機能】
・電話機能
・ビデオ会議機能
