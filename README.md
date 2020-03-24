
# freemarket_sample_70a DB設計
プログラミングスクールTECH::MASTERの最終課題で某フリーマーケットサービスのクローンサイトを作成しました。約3週間、5人チームでアジャイル開発を行いました。

# リンク
http://18.177.248.171

Basic認証をかけています。ご覧の際は以下のIDとPassを入力してください。
- Basic認証
  - ID: teama
  - Pass: password

# テストユーザー

- 購入者用アカウント
  - メールアドレス: sss@kanade
  - パスワード: 99999999

- 購入用カード情報
  - 番号：4242424242424242
  - 期限：4/22
  - セキュリティコード：123

- 出品用アカウント
  - メールアドレス名: sss@y
  - パスワード: 888888888

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
- has_one :address
- has_one :card
- has_one :sns_credential
- has_many :products, through: :likes

## adresses
|Column|Type|Options|
|------|----|-------|
|user_id|bigint||null:false, foreign_key: true|
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
|card_id|string|null:false|
## Association
- belongs_to: user

## productsテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|bigint|null:false, foreign_key: true|
|item_name|string|null:false|
|detail|string|null:false|
|main_tag_id|string| |
|price|integer|null:false|
|item_status|string|null:false|
|postage_cost|integer|null: false|
|ship_area|string|null:false|
|ship_method|string|null: false|
|ship_date|string|null: false|
|buyer_id|integer| |
|seller-id|integer| |
|like_count|integer| |
### association
- belongs_to :user
- has_many :images
- has_many :main_tags
- has_many :comments
- has_many :users, through: :likes


## main_tagsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string| |
|ancestry|string|  |
### Association
- belongs_to :product
<!-- ancestryというgemを用いる。 -->


##  item_imagesテーブル
|Column|Type|Options|
|------|----|-------|
|src|string| |
|image|string|null: false|
|product_id|bigint|null: false,foreign_key: true|
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

## likesテーブル
|Column|Type|Options|
|------|----|-------|
|product_id|bigint| |
|user_id|bigint| |
### Association
- belongs_to :product
- belongs_to :user

<!-- #      の担当箇所 -->

# 使用技術一覧

- Ruby 2.5.1
- Ruby on Rails 5.2.4.2
- MySQL 5.6.47
- Haml 5.1.2
- Sass 3.7.4
- jQuery 3.4.1
- Rspec 3.9
- AWS
- Github
