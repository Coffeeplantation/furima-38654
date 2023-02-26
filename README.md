## users テーブル（新規登録画面）

| Column              | Type   | Options                        |
| --------------------| ------ | ------------------------------ |
| email               | string | null: false, unique: true      |
| encrypted_password  | string | null: false                    |
| nickname            | string | null: false                    |
| familyname          | string | null: false                    |
| lastname            | string | null: false                    |
| familyname_kana     | string | null: false                    |
| lastname_kana       | string | null: false                    |
| birth_date          | date   | null: false                    |

### Association

- has_many :items
- has_many :orders

## itemsテーブル（出品画面）

| Column              | Type       | Options                      |
| --------------------| ---------  | ---------------------------- |
| item_name           | string     | null: false                  |
| text                | text       | null: false                  |
| category_id         | integer    | null: false                  |
| condition_id        | string     | null: false                  |
|scheduled_delivery_id| integer    | null: false                  |
| fee_id              | integer    | null: false                  |
| prefecture_id       | string     | null: false                  |
| price               | integer    | null: false                  |
| user                | references | null: false foreign_key:true |

### Association

- belongs_to :user
- has_one :order

## ordersテーブル（購入機能）

| Column              | Type       | Options                      |
| --------------------| ---------  | ---------------------------- |
| item_name           | string     | null: false                  |
| user                | references | null: false foreign_key:true |

### Association

- belongs_to :user
- belongs_to :address
- belongs_to :item

## addressesテーブル（購入画面）

| Column              | Type       | Options                      |
| --------------------| ---------  | ---------------------------- |
| post_code           | string     | null: false                  |
| prefecture_id       | integer    | null: false                  |
| city                | string     | null: false                  |
| address             | string     | null: false                  |
| building_name       | string     |                              |
| phone_number        | string     | null: false                  |

### Association

- belongs_to :order
