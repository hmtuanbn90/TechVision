Rails.application.routes.draw do

  scope "(:locale)", locale: /en|vi|ja/ do
  mount Ckeditor::Engine => '/ckeditor'
  resources :magazines
  get 'users/new'
  root 'static_pages#home'
  get '/help',    to: 'static_pages#help'
  get '/about',   to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'
  get '/signup',  to: 'users#new'
  get '/search' => 'static_pages#search', :as => 'search_page'

  resources :users
  resources :revises
  resources :reviews do
    resources :comments, only: [:create, :edit, :destroy]
    end
  resources :hashtags
  resources :bookmarks
  end
end
