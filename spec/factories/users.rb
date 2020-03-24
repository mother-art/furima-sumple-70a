FactoryBot.define do
  factory :user do
    nickname                {"Ferumi"}
    first_name              {"山田"}
    last_name               {"太郎"}
    first_name_kana         {"ヤマダ"}
    last_name_kana          {"タロウ"}
    sex                     {"female"}
    tel                     {"09012345678"}
    email                   {"ferumi@com"}
    password                {"pass1234"}
  end
end