class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
        has_many :products
        has_many :comments
        has_one :address
        # has_one :card
        #カード機能
        # has_one :sns_credential
        #sns機能
end
