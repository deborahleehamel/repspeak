Rails.application.routes.draw do

  get 'districts/index'

  get 'districts/import'

  root "home#index"
end
