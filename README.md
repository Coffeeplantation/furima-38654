## users テーブル（新規登録画面）

| Column              | Type   | Options                        |
| --------------------| ------ | ------------------------------ |
| email               | string | null: false, unique: true      |
| encrypted_password  | string | null: false                    |
| nickname            | string | null: false                    |
| family_name         | string | null: false                    |
| last_name           | string | null: false                    |
| family_name(kana)   | string | null: false                    |
| last_name(kana)     | string | null: false                    |
| date                | string | null: false                    |

### Association

- has_many :items
- has_many :orders

## itemsテーブル（出品画面）

| Column              | Type       | Options                      |
| --------------------| ---------  | ---------------------------- |
| item_name           | string     | null: false                  |
| text                | text       | null: false                  |
| category            | text       | null: false                  |
| condition_id        | text       | null: false                  |
| fee_id              | text       | null: false                  |
| area_id             | text       | null: false                  |
| shipping_id         | text       | null: false                  |
| price_id            | text       | null: false                  |
| user_id             | references | null: false foreign_key:true |

### Association

- belongs_to :user
- belongs_to :addresses
- belongs_to :order

## ordersテーブル（購入機能）

| Column              | Type       | Options                      |
| --------------------| ---------  | ---------------------------- |
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
| address             | string     | null: false                  |
| user_id             | references | null: false                  |

### Association

- belongs_to :user
- belongs_to :items
- belongs_to :orders
