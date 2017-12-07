Rails.application.routes.draw do
  resources :reviews
  resources :users
  resource :session
  root 'sessions#new'
  get 'craigslist/index'
  get 'reviews/new'
  get 'reviews/index'
  get 'craigslist/reviews/new'
  get "log_out" => "sessions#destroy", :as => "log_out"
  get "log_in" => "sessions#new", :as => "log_in"
  get '/signup' => 'users#new'
  get '/users' => 'users#create'
  post '/users' => 'users#create'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
