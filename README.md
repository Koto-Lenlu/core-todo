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

ログイン機能
![ログイン画面2](https://user-images.githubusercontent.com/66056185/91019063-645cb180-e62b-11ea-83a8-3aec745fa61f.gif)

ユーザ登録機能
![新規登録](https://user-images.githubusercontent.com/66056185/91019567-26ac5880-e62c-11ea-8320-b2ad586e4ea5.gif)


#### ログイン後
タスク登録/閲覧機能
![タスク登録](https://user-images.githubusercontent.com/66056185/91024580-1fd51400-e633-11ea-9fdb-c1adc8523361.gif)


タスク編集/削除機能
![編集削除機能](https://user-images.githubusercontent.com/66056185/91025533-7c84fe80-e634-11ea-8168-15c9d6de59c7.gif)

<img width="941" alt="スクリーンショット 2020-08-24 15 57 06" src="https://user-images.githubusercontent.com/66056185/91013359-8bfb4c00-e622-11ea-8034-b92d4a24eaa7.png">

①. タスク登録\
②. タスク一覧\
③. ポモドーロタイマー機能\
④. タスク編集\
⑤. タスク削除\
⑥. ログアウト


### ポモドーロタイマー機能

![ポモドーロ機能](https://user-images.githubusercontent.com/66056185/91025558-8575d000-e634-11ea-930e-795ffb96ff8d.gif)

<img width="959" alt="スクリーンショット 2020-08-24 16 07 23" src="https://user-images.githubusercontent.com/66056185/91014984-5a37b480-e625-11ea-9ea0-b15788aacae6.png">

①. 選択したタスク\
②. ポモドーロタイマー\
　−25分のタイマーが終了すると5分のタイマーが使えるようになります。\
　−5分のタイマーが終わったら、リセットボタンを押すことで25分のタイマーが再び使えます\
　−スタートボタンを押し、タイマーが動くとトマトが赤くなります。
　−リセットボタンが押されるとトマトは緑に戻ります。\
③. スタートボタン\
④. ストップボタン\
⑤. リセットボタン\
⑥. 終了してホームへ\
⑦. 終了して次のタスクへ\
　※次のタスクへ移動する際はタイマーを止めてから移動してください。

### トマト画像作成
keynoteを使ってトマトのアイコンを作成しました。
![トマト作成2](https://user-images.githubusercontent.com/66056185/91018115-21e6a500-e62a-11ea-96ef-706f336b8fd5.gif)

### 今後の実装予定
* 実績のデータを追加し、ポモドーロタイマーと連動させる。
* 実績がポモドーロタイマー横に表示されるようにする。
* 未完了タスクと完了タスクをメイン画面で分けて閲覧できるようにする。
* タスク細分化を補助する機能を付けたい。
 
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