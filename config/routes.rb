Rails.application.routes.draw do
  devise_for :users
  	root 'homes#index'
    resources :posts
    resources :users
    resources :galleries
    namespace :admin do
      get "/", to: "homes#index"
      resources :posts
    end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
