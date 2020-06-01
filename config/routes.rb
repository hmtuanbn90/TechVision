Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  resources :magazines
  get 'users/new'
root 'static_pages#home'
get '/help',    to: 'static_pages#help'
get '/about',   to: 'static_pages#about'
get '/contact', to: 'static_pages#contact'
get '/signup',  to: 'users#new'
<<<<<<< HEAD
get '/search' => 'static_pages#search', :as => 'search_page'
=======

>>>>>>> CRUD
resources :reviews
end
