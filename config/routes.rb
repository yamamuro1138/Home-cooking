Rails.application.routes.draw do
  root to: 'cookings#index'
  resources :cookings, only: [:new, :edit, :show]
end