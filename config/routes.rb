Rails.application.routes.draw do

  devise_for :users
  resources :users
  root 'posts#header'
  #rootないよ
end
