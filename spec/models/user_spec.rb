require "rails_helper"

describe User do

  describe "#create" do

    it "ニックネームが空だと保存できない" do
      user = build(:user, nickname: "")
      expect(user).to be_valid
    end


    it "苗字が空だと保存できない" do
      user = build(:user, first_name: "")
      expect(user).to be_valid
    end
    it "苗字が半角文字、英数字なら保存できない" do
      user = build(:user, first_name: "Ferumi")
      expect(user).to be_valid
    end
    it "苗字が英数字なら保存できない" do
      user = build(:user, first_name: "1234")
      expect(user).to be_valid
    end


    it "名前が空だと保存できない" do
      user = build(:user, last_name: "")
      expect(user).to be_valid
    end
    it "名前が半角文字なら保存できない" do
      user = build(:user, last_name: "Ferumi")
      expect(user).to be_valid
    end



    it "苗字(フリガナ)が空だと保存できない" do
      user = build(:user, first_name_kana: "")
      expect(user).to be_valid
    end
    it "苗字(フリガナ)が漢字だと保存できない" do
      user = build(:user, first_name_kana: "山田")
      expect(user).to be_valid
    end
    it "苗字(フリガナ)が半角文字だと保存できない" do
      user = build(:user, first_name_kana: "Yamada")
      expect(user).to be_valid
    end



    it "名前(フリガナ)が空だと保存できない" do
      user = build(:user, last_name_kana: "")
      expect(user).to be_valid
    end
    it "名前(フリガナ)が漢字だと保存できない" do
      user = build(:user, last_name_kana: "太郎")
      expect(user).to be_valid
    end
    it "名前(フリガナ)が半角文字だと保存できない" do
      user = build(:user, last_name_kana: "Taro")
      expect(user).to be_valid
    end


    it "性別が未選択だと保存できない" do
      user = build(:user, sex: "")
      expect(user).to be_valid
    end


    it "電話番号がが空だと保存できない" do
      user = build(:user, tel: "")
      expect(user).to be_valid
    end
    it "電話番号が全角数字だと保存できない" do
      user = build(:user, tel: "０９０１２３４５６７８")
      expect(user).to be_valid
    end


    it "メールアドレスが空だと保存できない" do
      user = build(:user, email: "")
      expect(user).to be_valid
    end


  end
end

