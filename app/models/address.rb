class Address < ApplicationRecord
    belongs_to :user, optional: true
    validates :zip_code, presence: true, format: {with: /\A[-]?[0-9]+(\.[0-9]+)?\z/ , message: "全角文字は入力できません。"}
end
