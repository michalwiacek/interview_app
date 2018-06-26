Rails.application.routes.draw do
  root to: 'logs#index'

  resources :logs, :log_comments
end
