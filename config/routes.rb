Rails.application.routes.draw do
  devise_for :users
  root 'home#about'
  get 'home/index'
  get 'home/about'
  resources :books
  resources :users, only: [:show, :edit, :update, :index, :new]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
