Rails.application.routes.draw do
  root to: 'logs#index'

  resources :logs do
    put :close
    resources :log_comments, only: %i[new create]
  end
end
