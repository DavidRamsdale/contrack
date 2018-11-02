Rails.application.routes.draw do
  
  resources :contractors
  resources :recruiters
  devise_for :users
  root to: "home#index"
  post '/process_payment', to: 'home#process_payment', as: 'payment'
  get '/recruiter/payment', to: 'recruiters#payment', as: 'recruiterpayment'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
