Rails.application.routes.draw do
  resources :merchants, only: [:show, :index]
  resources :items, only: :show
end
