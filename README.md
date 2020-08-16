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
* １つのタスクに集中できる環境を生み出すことで業務効率を上げられると考えた為にこのアプリを作りました。
* ポモドーロ・テクニックは自身と相性が良いため、その機能が盛り込まれたアプリを作りたかった為に企画を考えました。

### 実装機能
#### ログイン前
ユーザ登録機能
<img width="699" alt="スクリーンショット 2020-08-12 7 30 38" src="https://user-images.githubusercontent.com/66056185/89955601-59d70b00-dc6e-11ea-9980-b4de5d4d5fb1.png">


ログイン機能
<img width="685" alt="スクリーンショット 2020-08-12 7 34 35" src="https://user-images.githubusercontent.com/66056185/89955606-5c396500-dc6e-11ea-87eb-c700e4109861.png">

#### ログイン後
タスク管理機能
<img width="858" alt="スクリーンショット 2020-08-10 14 16 23" src="https://user-images.githubusercontent.com/66056185/89753821-b0303680-db14-11ea-8c61-6db8ef33966b.png">

①. タスク登録\
②. タスク一覧\
③. タスク削除\
④. タスク処理（未実装）

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