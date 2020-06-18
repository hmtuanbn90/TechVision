Rails.application.routes.draw do

  get 'sessions/new'
  scope "(:locale)", locale: /en|vi/ do
    mount Ckeditor::Engine => '/ckeditor'
    resources :magazines
    get 'users/new'
    root 'static_pages#home'
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
    resources :topics
    resources :reviews do
      resources :likes
      resources :bookmarks
      resources :comments, only: [:create, :edit, :destroy]
    end

    namespace :admin do
      resources :revises
      resources :reviews
    end
  end
end
