Rails.application.routes.draw do
  get 'card/new'
  get 'card/show'
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  devise_scope :user do
    get 'addresses', to: 'users/registrations#new_address'
    post 'addresses', to: 'users/registrations#create_address'
  end
  root "posts#index"
  resources :posts
  resources :users
  resources :products do
      member do
        get 'buyer'
        
    end
  end
  resources :buyer, only: [:index] do
    collection do
      get 'index', to: 'buyer#index'
      post 'pay', to: 'buyer#pay'
      get 'done', to: 'buyer#done'
    end
  end

  resources :ad
  resources :comments

  resources :card, only: [:new, :show] do
    collection do
      post 'pay', to: 'card#pay'
      post 'delete', to: 'card#delete'
    end
  end
end

