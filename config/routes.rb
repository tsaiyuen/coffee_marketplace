Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :coffees
  resources :orders do 
    resources :reviews, only: [:new, :create, :index]
  end
end
