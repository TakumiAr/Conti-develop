Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'products/index'
  get 'products/show'
  root 'home#index'
  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'   
  } 
  
  devise_scope :user do
    get "user/:id", :to => "users/registrations#detail"
    get "signup", :to => "users/registrations#new"
    get "login", :to => "users/sessions#new"
    get "logout", :to => "users/sessions#destroy"
  end

  get "users/mypage", to: "users#mypage"
  resources :users do
    get "products", to: "users#products"
  end

  resources :users

  get "requests/made", to: "requests#made"
  get "requests/gets", to: "requests#gets"
  resources :requests
  resources :services
  resources :products
  get '/about', :to => "home#about"
end
