class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
        validates :first_name,:last_name, presence: true, format: {with: /\A[ぁ-んァ-ン一-龥]/ , message: "半角文字、英数字は入力できません。"}
        #日本語のみを許可
        validates :first_name_kana,:last_name_kana,presence: true,format: {with: /\A[\p{katakana}\p{blank}ー－]+\z/, message: "カタカナで入力してください。"}
        #カタカナのみを許可
        validates :tel, presence: true, format: {with: /\A[0-9]+\z/, message: "全角数字は入力できません。"}
        #半角数字のみを許可
        has_many :products, dependent: :destroy
        has_many :comments
        has_one :address
        has_many :cards
        has_many :likes, dependent: :destroy
        has_many :like_tweets, through: :likes, source: :tweet
        
        # has_one :card
        #カード機能
        # has_one :sns_credential
        #sns機能
end
