Rails.application.routes.draw do
  devise_for :users
  root 'posts#index'
  resources :posts
  resources :users
  resources :products do
    member do
      get 'buyer'
    end
  end

  resources :ad
  resources :comments
end