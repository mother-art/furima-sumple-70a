require 'rails_helper'

describe Address do
    describe '#create' do
        it "郵便番号が5文字" do
            address = build(:address, zip_code: "55555")
            address.valid?
        end
        it "郵便番号が8文字" do
            address = build(:address, zip_code: "8888888")
            address.valid?
        end
        it "郵便番号がない" do
            address = build(:address, zip_code: nil )
            address.valid?
        end
        it "郵便番号が全角" do
        address = build(:address, zip_code: nil)
        address.valid?
        end
        it "都道府県が空" do
        address = build(:address, prefecture: nil)
        address.valid?
        end
        it "市町村が空" do
        address = build(:address, city: nil)
        address.valid?
        end
        it "番地が空" do
        address = build(:address, street_num: nil)
        address.valid?
        end
        it "番地が半角" do
        address = build(:address, prefecture: "hoge")
        address.valid?
        end
    end
end
