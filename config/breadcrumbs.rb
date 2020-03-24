crumb :root do
  link "トップページ", root_path
end

crumb :mypage do
  link "マイページ", users_path
  parent :root
end

crumb :product do
  link "商品一覧", products_path
end

crumb :show do
  link "商品詳細", product_path
  parent :product
end