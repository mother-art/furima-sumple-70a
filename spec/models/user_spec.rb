require 'rails_helper'

describe User do
  describe '#create' do

    it "ニックネームのバリデーション" do
      user = build(:user, nickname: nil)
      user.valid?
      expect(user.errors[:nickname]).to include("can't be blank")
    end

    it "emailのバリデーション" do
      user = build(:user, email: nil)
      user.valid?
      expect(user.errors[:email]).to include("can't be blank")
    end
    
  end
end