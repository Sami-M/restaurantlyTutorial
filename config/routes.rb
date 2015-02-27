Rails.application.routes.draw do
  resources :restaurants
  root to: "restaurants#index"
end
