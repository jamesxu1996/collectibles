Rails.application.routes.draw do
  devise_for :users
  resources :profiles, :reviews, :orders, :listings
  root to: "home#index"

  post '/rate' => 'rater#create', :as => 'rate'
  post 'payments/webhook', to: 'payments#webhook'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end