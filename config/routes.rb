Rails.application.routes.draw do
  devise_for :users
  root 'home#about'
  get 'home/index'
  get 'home/about'
  resources :users, only: [:show, :edit, :update, :index, :new]
  resources :books do
    resources :book_comments, only: [:create, :edit, :update, :destroy]
    resource :favorites, only: [:create, :destroy]
    member do
      get 'fabo' => 'books#fabo'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
