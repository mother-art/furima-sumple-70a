
# freemarket_sample_70a DB設計
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|nickname|string|null:false|
|name|string|null:false|
|name_kana|string|null:false|
|sex|string|null:false|
|tel|string|null:false|
|email|string|null: false|
|password|string|null: false|
## Association
- has_many :products
- has_many :comments
- belongs_to: address
- belongs_to: card
- belongs_to: sns_credential

## adresses
|Column|Type|Options|
|------|----|-------|
|user_id|integer||null:false, foreign_key: true|
|zip_code|string|null:false|
|prefecture|string|null:false|
|city|string|null:false|
|street_num|string|null:false|
|building|string|  |
## Association
- belongs_to: user

## cards
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null:false, foreign_key: true|
|customer_id|integer|null:false|
|card_id|integer|null:false|
|token|string|null:false|
## Association
- belongs_to: user


## sns_credentials
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null:false, foreign_key: true|
|u_id|integer|null:false|
|provider|string|null:salse|
## Association
- belongs_to: user

## productsテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null:false, foreign_key: true|
|item_name|string|null:false|
|detail|string|null:false|
|category|string||
|price|integer|null:false|
|item_status|string|null:false|
|postage_cost|integer|null: false|
|ship_area|string|null:false|
|ship_method|string|null: false|
|ship_date|string|null: false|

### association
- belongs_to :user
- has_many :images
- has_many :main_tags
- has_many :comments

## main_tagsテーブル
|Column|Type|Options|
|------|----|-------|
|main_tag|string|null: false|
|product_id|integer|null: false, foreign_key: true|
### Association
- has_many : sub_tags
- belongs_to :product

## sub_tagsテーブル
|Column|Type|Options|
|------|----|-------|
|sub_tag|text|null: false|
### Association
- belongs_to : Main＿tag
- has_many : sub2_tags

## sub2_tagsテーブル
|Column|Type|Options|
|------|----|-------|
|sub_tag2|text|null: false|
### Association
- belongs_to : sub_tag

##  imagesテーブル
|Column|Type|Options|
|------|----|-------|
|image|string|null: false|
|product_id|integer|null: false,foreign_key: true|
### Association
- belongs_to : product

## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|body|text|null: false|
|user_id|integer|null: false, foreign_key: true|
|product_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :product

