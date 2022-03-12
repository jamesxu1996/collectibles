Rails.application.routes.draw do
  post '/rate' => 'rater#create', :as => 'rate'
  devise_for :users
  resources :collectibles, :profiles, :reviews, :orders, :listings, :users
  root to: "collectibles#home"
 
  get "/restricted", to: "collectibles#restricted"
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end