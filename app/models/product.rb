class Product < ApplicationRecord
    belongs_to :user
    has_many :comments
    # has_many :images
    #画像実装の時に使用
    # has_many :main_tags
    #タグ機能
end
