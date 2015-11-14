Rails.application.routes.draw do
  devise_for :users
  resources :meals

  root to: 'info#index'
end
