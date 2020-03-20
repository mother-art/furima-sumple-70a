class MainTag < ApplicationRecord
  # belongs_to :product
  has_many :products
  has_ancestry
end
