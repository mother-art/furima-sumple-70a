FactoryBot.define do

  factory :user do
    nickname              {"みく"}
    email                 {"miku@gmail.com"}
    password              {"11111111"}
    password_confirmation {"11111111"}
    first_name            {"てすと"}
    last_name             {"みく"}
    first_name_kana       {"テスト"}
    last_name_kana        {"ミク"}
    birth                 {"2020-02-22"}
    tel                   {"00000000000"}
    sex                   {"men"}
  end

end