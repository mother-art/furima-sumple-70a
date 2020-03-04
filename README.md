### Association
- has_many :products
- has_many :comments

## productsテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null:false|
|item_name|string|null:false|
|detail|string|null:false|
|category|string|null:false|
|price|integer|null:false|
|item_status|string|null:false|
|postage_pay|string|null: false|
|ship_area|string|null:false|
|ship_method|string|null: false|
|ship_data|string|null: false|

### Association
- belongs_to :user
- has_many :Images
<!-- - has_many :Main_categories -->
## messagesテーブル
|Column|Type|Options|
|------|----|-------｜
|body|text| |
|image|string| |
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :group