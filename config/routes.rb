Rails.application.routes.draw do
  devise_for :users
  root 'chores#index'
  resources :chores, only: [:index, :show]
end
