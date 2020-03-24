class Address < ApplicationRecord
    belongs_to :user, optional: true
    validates :zip_code, presence: true, format: {with: /\A[0-9]{3}-[0-9]{4}\z/ , message: "全角文字は入力できません。"}
    validates :prefecture,:city,:street_num, presence: true
    validates :prefecture,:city,format: {with: /\A[ぁ-んァ-ン一-龥]/ , message: "半角文字、英数字は入力できません。"}
end
