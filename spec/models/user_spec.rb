require "rails_helper"

describe User do

  describe "#create" do

    it "全ての条件を満たせば保存ができる" do
      user = build(:user)
      expect(user).to be_valid
    end


    it "ニックネームが空だと保存できない" do
      user = build(:user, nickname: "")
      user.valid?
    end


    it "苗字が空だと保存できない" do
      user = build(:user, first_name: "")
      user.valid?
    end
    it "苗字が半角文字、英数字なら保存できない" do
      user = build(:user, first_name: "Ferumi")
      user.valid?
    end
    it "苗字が英数字なら保存できない" do
      user = build(:user, first_name: "1234")
      user.valid?
    end


    it "名前が空だと保存できない" do
      user = build(:user, last_name: "")
      user.valid?
    end
    it "名前が半角文字なら保存できない" do
      user = build(:user, last_name: "Ferumi")
      user.valid?
    end



    it "苗字(フリガナ)が空だと保存できない" do
      user = build(:user, first_name_kana: "")
      user.valid?
    end
    it "苗字(フリガナ)が漢字だと保存できない" do
      user = build(:user, first_name_kana: "山田")
      user.valid?
    end
    it "苗字(フリガナ)が半角文字だと保存できない" do
      user = build(:user, first_name_kana: "Yamada")
      user.valid?
    end



    it "名前(フリガナ)が空だと保存できない" do
      user = build(:user, last_name_kana: "")
      user.valid?
    end
    it "名前(フリガナ)が漢字だと保存できない" do
      user = build(:user, last_name_kana: "太郎")
      user.valid?
    end
    it "名前(フリガナ)が半角文字だと保存できない" do
      user = build(:user, last_name_kana: "Taro")
      user.valid?
    end


    it "性別が未選択だと保存できない" do
      user = build(:user, sex: "")
      user.valid?
    end


    it "電話番号がが空だと保存できない" do
      user = build(:user, tel: "")
      user.valid?
    end
    it "電話番号が全角数字だと保存できない" do
      user = build(:user, tel: "０９０１２３４５６７８")
      user.valid?
    end


    it "メールアドレスが空だと保存できない" do
      user = build(:user, email: "")
      user.valid?
    end


  end
end

