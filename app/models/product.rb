class Product < ApplicationRecord
    validates :price, presence: true, format: {with: /\A[0-9]+\z/, message: "全角数字は入力できません。"}
    # belongs_to :user
    has_many :comments
    # has_many :images
    #画像機能
    belongs_to user, foreign_key: 'user_id'
    belongs_to :main_tag
end
