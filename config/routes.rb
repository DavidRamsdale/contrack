Rails.application.routes.draw do
  
  resources :contractors
  resources :recruiters
  devise_for :users
  root to: "home#index"
  resources :search, only: [:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
