FactoryBot.define do
  factory :product do
      item_name          {"abe"}
      detail             {"kkk"}
      price              {"500"}
      item_status        {"ほとんど未使用"}
      ship_area          {"関西"}
      ship_method        {"クロネコヤマト"}
      ship_date          {"1日〜２日"}
      postage_cost       {"着払い"}
      main_tag_id          {"32"}
      user_id              {"1"}
  end
end