Rails.application.routes.draw do
  get 'listings/index'
  get 'listings/show'
  get 'listings/new'
  get 'listings/edit'
  get 'orders/index'
  get 'orders/show'
  get 'orders/new'
  get 'orders/edit'
  get 'profiles/index'
  get 'profiles/show'
  get 'profiles/new'
  get 'profiles/edit'
  post '/rate' => 'rater#create', :as => 'rate'
  devise_for :users
  resources :profiles, :reviews, :orders, :listings, :users
  root to: "home#index"
 
  get "/restricted", to: "collectibles#restricted"
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end