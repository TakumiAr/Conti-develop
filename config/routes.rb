Rails.application.routes.draw do

  root 'home#index'
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

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
  get 'users/search', to: 'users#search'
  get 'users/products', to: 'users#product'

  resources :users do
    get "products", to: "users#products"
    get "services", to: "users#services"
    get "gears", to: "users#gears"
  end

  resources :users

  get "requests/made", to: "requests#made"
  get "requests/gets", to: "requests#gets"
  resources :requests
  resources :services

  get 'products/search', to: 'products#search'
  resources :products
  resources :portfolios
  resources :gears
  get '/about', :to => "home#about"

  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?

end
