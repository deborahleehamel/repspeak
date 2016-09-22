Rails.application.routes.draw do

  get 'legislators/show'

  root "home#index"

  get "/auth/twitter", as: :twitter_login
  get "/auth/twitter/callback", to: "sessions#create"
  get "/logout", to: "sessions#destroy"
end
