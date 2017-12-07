Rails.application.routes.draw do
  resources :reviews
  resources :users
  resource :session
  root to: 'craigslist#index'
  get 'craigslist/index'
  get "log_out" => "session#destroy", :as => "log_out"
  get "log_in" => "session#new", :as => "log_in"
  get '/signup' => 'users#new'
  get '/users' => 'users#create'
  post '/users' => 'users#create'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
