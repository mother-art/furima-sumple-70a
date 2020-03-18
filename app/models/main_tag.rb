class MainTag < ApplicationRecord
  belongs_to :product
  has_ancestry
end
