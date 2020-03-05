class Product < ApplicationRecord
    belongs_to :user
    has_many :comments
    # has_many :images
    # has_many :main_tags
end
