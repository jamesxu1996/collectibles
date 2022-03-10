Rails.application.routes.draw do
  resources :collectibles
  root to: "collectibles#home"
 

  devise_for :users
  get 'collectibles/home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end