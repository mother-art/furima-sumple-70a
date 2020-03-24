require 'rails_helper'
describe Product do
  describe '#create' do
    it "nameが空では登録不可" do
      product = build(:product, item_name: "")
      product.valid?
      expect(product.errors[:item_name]).to include("を入力してください")
    end
    it "detailが空では登録不可" do
      product = build(:product, detail: "")
      product.valid?
      expect(product.errors[:detail]).to include("を入力してください")
    end
    it "priceが空だったら登録できないようにしたい" do
      product = build(:product, price: "")
      product.valid?
      expect(product.errors[:price]).to include("を入力してください")
    end
    it "item_statusが空では登録不可" do
      product = build(:product, item_status: "")
      product.valid?
      expect(product.errors[:item_status]).to include("を入力してください")
    end
    it "ship_areaが空では登録不可" do
      product = build(:product, ship_area: "")
      product.valid?
      expect(product.errors[:ship_area]).to include("を入力してください")
    end
    it "ship_methodが空では登録不可" do
      product = build(:product, ship_method: "")
      product.valid?
      expect(product.errors[:ship_method]).to include("を入力してください")
    end
    it "ship_dateが空では登録不可" do
      product = build(:product, ship_date: "")
      product.valid?
      expect(product.errors[:ship_date]).to include("を入力してください")
    end
    it "postage_costが空では登録不可" do
      product = build(:product, postage_cost: "")
      product.valid?
      expect(product.errors[:postage_cost]).to include("を入力してください")
    end
    it "main_tagが空では登録不可" do
      product = build(:product, main_tag_id: "")
      product.valid?
      expect(product.errors[:main_tag_id]).to include("を入力してください")
    end
    it "userが空では登録不可" do
      product = build(:product, user_id: "")
      product.valid?
      expect(product.errors[:user_id]).to include("を入力してください")
    end
  end
end




