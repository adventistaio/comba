Rails.application.routes.draw do
  devise_for :users
  get 'home/index'
  root 'home#index'

  resources :verses do
    resources :verse_commentaries
  end
  resources :chapters
  resources :book_commentaries
  resources :books
  resources :sections
  resources :categories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
