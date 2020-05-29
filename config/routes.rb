Rails.application.routes.draw do
  resources :magazines
  get 'users/new'
root 'static_pages#home'
get '/help',    to: 'static_pages#help'
get '/about',   to: 'static_pages#about'
get '/contact', to: 'static_pages#contact'
get '/signup',  to: 'users#new'
get '/search' => 'static_pages#search', :as => 'search_page'
resources :reviews
end
