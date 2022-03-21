Rails.application.routes.draw do
  devise_for :users
  resources :listings
  root to: "home#index"


  get "purchases", to: "listings#purchases", as: "purchases" 
  get "payments/success/:id", to: "payments#success", as: "payments_success"
  post "payments/webhook", to: "payments#webhook"
  post "payments", to: "payments#create_checkout_session", as: "create_checkout_session"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end

