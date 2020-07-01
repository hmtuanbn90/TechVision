Rails.application.routes.draw do

  get 'sessions/new'
  scope "(:locale)", locale: /en|vi/ do
    mount Ckeditor::Engine => '/ckeditor'
    resources :magazines
    root 'static_pages#home'
    get '/auth/:provider/callback', to: 'sessions#create'
    get 'users/new'
    get '/help',    to: 'static_pages#help'
    get '/about',   to: 'static_pages#about'
    get '/contact', to: 'static_pages#contact'
    get '/signup',  to: 'users#new'
    get '/search' => 'static_pages#search', :as => 'search_page'
    get '/login', to: 'sessions#new'
    post '/login', to: 'sessions#create'
    delete '/logout', to: 'sessions#destroy'
    resources :users do
      resources :reviews
    end
    resources :hashtags
    resources :bookmarks
    resources :topics, only: [:show]
    resources :reviews do
      resources :reports, only: [:create]
      resources :likes
      resources :bookmarks, only: [:create]
      resources :comments
    end
    namespace :admin do
      resources :reports
      resources :revises
      resources :reviews
      resources :topics, only: [:create, :update, :destroy, :index]
    end 
  end
end
