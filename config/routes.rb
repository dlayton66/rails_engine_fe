Rails.application.routes.draw do
  resources :merchants, only: [:show, :index]
end
