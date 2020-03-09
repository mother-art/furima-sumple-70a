class Address < ApplicationRecord
    validates :zip_code, presence: true, format: {with: /\A\d{3}[-]\d{4}$|^\d{3}[-]\d{2}$|^\d{3}\z/ , message: "全角文字は入力できません。"}
    #郵便番号ハイフン込みで登録される
    #半角数字のみ
    belongs_to :user, optional: true
    #optionalは外部キーがnullでも許可するオプション
    #wizで使用する、使用しないなら削除
end
