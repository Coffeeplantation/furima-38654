## users テーブル（新規登録画面）

| Column              | Type   | Options                        |
| --------------------| ------ | ------------------------------ |
| email               | string | null: false, unique: true      |
| encrypted_password  | string | null: false                    |
| nickname            | string | null: false                    |
| family_name          | string | null: false                    |
| last_name            | string | null: false                    |
| family_name_kana     | string | null: false                    |
| last_name_kana       | string | null: false                    |
| birth_date          | date   | null: false                    |

### Association

- has_many :items
- has_many :orders

## itemsテーブル（出品画面）

| Column              | Type       | Options                      |
| --------------------| ---------  | ---------------------------- |
| item                | string     | null: false                  |
| item_text           | text       | null: false                  |
| category_id         | integer    | null: false                  |
| condition_id        | integer    | null: false                  |
|scheduled_delivery_id| integer    | null: false                  |
| fee_id              | integer    | null: false                  |
| prefecture_id       | integer    | null: false                  |
| price               | integer    | null: false                  |
| user                | references | null: false foreign_key:true |

### Association

- belongs_to :user
- has_one :order

## ordersテーブル（購入機能）

| Column              | Type       | Options                      |
| --------------------| ---------  | ---------------------------- |
| item                | references | null: false foreign_key:true |
| user                | references | null: false foreign_key:true |

### Association

- belongs_to :user
- belongs_to :item
- has_one :address

## addressesテーブル（購入画面）

| Column              | Type       | Options                      |
| --------------------| ---------  | ---------------------------- |
| post_code           | string     | null: false                  |
| prefecture_id       | integer    | null: false                  |
| city                | string     | null: false                  |
| address             | string     | null: false                  |
| building_name       | string     |                              |
| phone_number        | string     | null: false                  |
| order               | references | null: false foreign_key:true |

### Association

- belongs_to :order
