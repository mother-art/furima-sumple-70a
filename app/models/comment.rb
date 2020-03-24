class Comment < ApplicationRecord
    belongs_to :user
    belongs_to :product, presence: true
end
