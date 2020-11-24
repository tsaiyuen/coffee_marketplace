Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :orders, only: [:index, :new, :create]
  #get 'index', to: 'orders#index'
  #get 'new', to: 'orders#new'
  #post 'create', to: 'orders#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
