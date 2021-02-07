Rails.application.routes.draw do
  root to: 'articles#index'
  devise_for :users
  resource :user, except: [:new, :create, :destroy]
  resources :articles do
    resource :favorites, only: [:create, :destroy]
    resources :comments, only: [:create]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
