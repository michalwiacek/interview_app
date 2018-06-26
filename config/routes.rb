Rails.application.routes.draw do
  root to: 'logs#index'

  resources :logs
end
