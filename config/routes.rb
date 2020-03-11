Rails.application.routes.draw do
  devise_for :users
  get '/products/:id/buyer' => 'products#buyer'
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