# Core Todo

## 概要

* URL: https://core-todo-w-poms.herokuapp.com/
* テストアカウントEmail：test@test
* テストアカウントPassword：12345678

### どんなアプリケーションなのか
#### **シンプルなタスク管理アプリ**
* ポモドーロ・テクニックを使って登録したタスクを１つずつ確実にこなしていくスタイルのタスク管理アプリです。
##### ※ポモドーロ・テクニックとは、作業25分間と休憩5分間の組み合わせを使った時間管理テクニックです。


### 企画背景
* リモート作業が多くなる昨今、１つのタスクに集中できる環境を生み出すことで業務効率を上げられると考えた為にこのアプリを作りました。
* ポモドーロ・テクニックは自身と相性が良いため、その機能が盛り込まれたアプリを作りたかった為に企画を考えました。

### 実装機能
#### ログイン前
ユーザ登録機能
![新規登録](https://user-images.githubusercontent.com/66056185/90588850-9cbd5380-e217-11ea-9ea6-5c8f05c2859e.gif)


ログイン機能
![ログイン画面](https://user-images.githubusercontent.com/66056185/90650941-6f07f700-e277-11ea-9771-06cded3174d1.gif)

#### ログイン後
タスク登録閲覧機能

![タスク登録削除機能](https://user-images.githubusercontent.com/66056185/90650599-0caef680-e277-11ea-979c-1714127f7493.gif)

<img width="654" alt="スクリーンショット 2020-08-17 10 34 07" src="https://user-images.githubusercontent.com/66056185/90349572-54fec680-e075-11ea-9d7c-a2864cb7ae5c.png">

①. タスク登録\
②. タスク一覧\
③. タスク削除\
④. タスク処理（未実装）\
⑤. ログアウト

### 実装予定機能
タスク処理機能
<img width="906" alt="スクリーンショット 2020-08-10 14 17 32" src="https://user-images.githubusercontent.com/66056185/89753824-b32b2700-db14-11ea-883a-9cabe418953d.png">

①. タスク\
②. タイマー\
　A.作業中\
　B.休憩中\
③. 終了\
④. 終了して次

### 開発環境
* Ruby/Ruby on Rails/HTML/CSS/PostgreSQL/Github/heroku/Visual Studio Code

# DB設計
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|email|string|null: false|
|password|string|null: false|
### Association
- has_many :todos, dependent: :destroy

## todosテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|comment|text||
|quote|integer||
|user_id|integer||

### Association

- belongs_to :user