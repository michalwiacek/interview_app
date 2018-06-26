Rails.application.routes.draw do
  root to: 'logs#index'

  resources :logs do
    resources :log_comments, only: %i[new create]
  end
end
