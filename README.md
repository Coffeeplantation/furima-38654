## users テーブル（新規登録画面）

| Column              | Type   | Options                        |
| --------------------| ------ | ------------------------------ |
| email               | string | null: false, unique: true      |
| encrypted_password  | string | null: false                    |
| nickname            | string | null: false                    |
| name                | string | null: false                    |
| kana                | string | null: false                    |
| birthday            | string | null: false                    |

### Association

- has_many :items
- has_many :orders
- has_many :addresses

## itemsテーブル（出品画面）

| Column              | Type       | Options                      |
| --------------------| ---------  | ---------------------------- |
| productsname        | text       | null: false                  |
| text                | text       | null: false                  |
| category            | text       | null: false                  |
| condition           | text       | null: false                  |
| fee                 | text       | null: false                  |
| area                | text       | null: false                  |
| shipping            | text       | null: false                  |
| price               | text       | null: false                  |
| user_id             | references | null: false foreign_key:true |

### Association

- belongs_to :user
- belongs_to :addresses
- belongs_to :order

## ordersテーブル（購入機能）

| Column              | Type       | Options                      |
| --------------------| ---------  | ---------------------------- |
| title               | text       | null: false                  |
| text                | text       | null: false                  |
| user_id             | references | null: false foreign_key:true |

### Association

- belongs_to :user
- belongs_to :addresses
- belongs_to :orders

## addressesテーブル（購入画面）

| Column              | Type       | Options                      |
| --------------------| ---------  | ---------------------------- |
| text                | text       | null: false                  |
| creditcard          | text       | null: false                  |
| address             | text       | null: false                  |
| user_id             | references | null: false foreign_key:true |

### Association

- belongs_to :user
- belongs_to :items
- belongs_to :orders
