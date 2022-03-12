Rails.application.routes.draw do
  post '/rate' => 'rater#create', :as => 'rate'
  devise_for :users
  resources :profiles, :reviews, :orders, :listings, :users
  root to: "home#index"
 
  get "/restricted", to: "collectibles#restricted"
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end