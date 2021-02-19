## アプリケーション名
Home cooking

## アプリケーション概要
- ユーザーが投稿した料理投稿を閲覧できるアプリです。

## URL
http://54.199.124.177/
## テスト用アカウント
- email:     test@com
- password:  test1111

## 利用方法
- 料理を閲覧される方はユーザー登録なしで閲覧できます
- 料理の詳細を見たい方は投稿されている画像をクリックすると詳細ページに飛びます
- 料理を投稿される方はユーザー登録をしてヘッダーから料理投稿ページへ飛び投稿できます
- 編集及び削除は料理一覧画面の投稿画像をクリック→詳細ページ→編集及び削除ボタンをクリック

## 目指した課題解決
- 料理を作ることが苦手な方が、家で料理を簡単に作れるようになり料理を作ることが楽しいと
思ってもらえるキッカケになれたらいいと思いこのアプリを作りました。

## アプリで実装した機能.できること
- ユーザー管理機能
[![Image from Gyazo](https://i.gyazo.com/1412e043b534ad9d9b1e1c9124836b7b.jpg)](https://gyazo.com/1412e043b534ad9d9b1e1c9124836b7b)
- 料理投稿機能
[![Image from Gyazo](https://i.gyazo.com/e3ee7148fb6bc5d7c92918d443a9927c.png)](https://gyazo.com/e3ee7148fb6bc5d7c92918d443a9927c)
- 料理一覧機能
[![Image from Gyazo](https://i.gyazo.com/acff9abdf90551d9ec57cc8a0f53f1b0.jpg)](https://gyazo.com/acff9abdf90551d9ec57cc8a0f53f1b0)
- 料理詳細表示
[![Image from Gyazo](https://i.gyazo.com/8f1de1e4bea138b4baea7aa466c873fd.jpg)](https://gyazo.com/8f1de1e4bea138b4baea7aa466c873fd)
- 料理編集.削除機能
[![Image from Gyazo](https://i.gyazo.com/c47951191af6e4ba4235926f31f32a1c.jpg)](https://gyazo.com/c47951191af6e4ba4235926f31f32a1c)
- ページネーション機能
[![Image from Gyazo](https://i.gyazo.com/d3cafef68c6a86cf9eb328ddf620d2df.jpg)](https://gyazo.com/d3cafef68c6a86cf9eb328ddf620d2df)

## ローカル環境での動作方法
`$ https://github.com/yamamuro1138/Home-cooking`  
`$ cd Home-cooking`  
`$ bundle install`  
`$ rails db:create`  
`$ rails db:migrate`  

## ER図
[![Image from Gyazo](https://i.gyazo.com/9af27f2d7e498280a875f992cc0d7477.png)](https://gyazo.com/9af27f2d7e498280a875f992cc0d7477)

## テーブル設計

## usersテーブル

|column             |Type    |options    |
|-------------------|--------|-----------|
|nickname           |string  |null: false|
|email              |string  |null: false|
|encrypted_password |string  |null: false|

### Association

- has_many :cookings

## cookingsテーブル

|column     |Type      |options          |
|-----------|----------|-----------------|
|name       |string    |null: false      |
|recipe     |string    |null: false      |
|point      |string    |null: false      |
|material   |string    |null: false      |
|user       |references|foreign_key: true|

### Association

- belongs_to :user