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

  post '/search', to: 'search#results', as: 'searchresults'
  get '/search', to: 'search#results', as: 'searchindex'

  post '/process_payment', to: 'home#process_payment', as: 'payment'
  get '/recruiter/payment', to: 'recruiters#payment', as: 'recruiterpayment'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
