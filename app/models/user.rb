class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable
    has_many :products
    has_many :comments
    has_one :address
    # has_one :card
    #カード機能実装の時に使用
    # has_one :sns_credential
    #SNS機能実装の時に使用
end
