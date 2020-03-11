class Product < ApplicationRecord
    validates :price, presence: true, format: {with: /\A[0-9]+\z/, message: "全角数字は入力できません。"}
    # belongs_to :user
    has_many :comments
    # has_many :images
    #画像機能
    belongs_to :user
    belongs_to :main_tag
    has_many :item_images
    accepts_nested_attributes_for :item_images, allow_destroy: true
    # has_many :main_tags
    #タグ機能
end
