Rails.application.routes.draw do
  resources :collectibles
  root to: "collectibles#index"


  devise_for :users
  get 'collectibles/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end