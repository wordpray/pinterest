Rails.application.routes.draw do

  devise_for :users
  devise_for :views
  resources :pins

  root "pins#index"
end
