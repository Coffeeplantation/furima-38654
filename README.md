## users テーブル（新規登録画面）

| Column              | Type   | Options                        |
| --------------------| ------ | ------------------------------ |
| email               | string | null: false, unique: true      |
| encrypted_password  | string | null: false                    |
| nickname            | string | null: false                    |

### Association

- has_many :items

## itemsテーブル（出品画面）

| Column              | Type       | Options                      |
| --------------------| ---------  | ---------------------------- |
| text                | text       | null: false                  |
| user_id             | text       | null: false foreign_key:true |

### Association

- belongs_to :user
- belongs_to :addresses
- belongs_to :order

## ordersテーブル（購入機能）

| Column              | Type       | Options                      |
| --------------------| ---------  | ---------------------------- |
| text                | text       | null: false                  |
| user_id             | text       | null: false foreign_key:true |

### Association

- belongs_to :user
- belongs_to :addresses
- belongs_to :orders

## addressesテーブル（購入画面）

| Column              | Type       | Options                      |
| --------------------| ---------  | ---------------------------- |
| text                | text       | null: false                  |
| user_id             | text       | null: false foreign_key:true |

### Association

- belongs_to :user
- belongs_to :items
- belongs_to :orders
