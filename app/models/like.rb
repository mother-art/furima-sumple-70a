class Like < ApplicationRecord
  belongs_to :product, counter_cache: :likes_count
  belongs_to :user
 
  validates :user_id, presence: true
  validates :product_id, presence: true
  validates_uniqueness_of :product_id, scope: :user_id
end
