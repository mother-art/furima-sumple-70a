Rails.application.routes.draw do
  devise_for :users
  resources :users
  #rootないよ
  root 'posts#item'
end
