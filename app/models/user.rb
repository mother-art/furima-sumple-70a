class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable
    has_many :products
    has_many :comments
    has_one :address
    # has_one :card
    # has_one :sns_credential
end
