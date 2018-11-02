Rails.application.routes.draw do
  
  get 'languages/new'
  get 'languages/create'
  get 'languages/update'
  get 'languages/edit'
  get 'languages/destroy'
  get 'languages/index'
  get 'languages/show'
  get 'language_users/new'
  post 'language_users', to: "language_users#create"
  resources :contractors
  resources :recruiters
  devise_for :users
  root to: "home#index"
  resources :search, only: [:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
