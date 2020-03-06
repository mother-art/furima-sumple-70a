class Product < ApplicationRecord
    belongs_to :user
    has_many :comments
    # has_many :images
    #画像機能
    # has_many :main_tags
    #タグ機能
end
