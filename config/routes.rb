Rails.application.routes.draw do

  devise_for :users
  devise_for :views

  root "pins#index"

  resources :users,only: [:show]
  resources :boards
  resources :pins do
    member do
      put "like", to: "pins#upvote"
    end
  end

end
