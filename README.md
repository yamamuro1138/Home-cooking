# テーブル設計

## usersテーブル

|column             |Type    |options    |
|-------------------|--------|-----------|
|name               |string  |null: false|
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