Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'posts#index'

  resources :posts
  resources :users
  resources :sessions

  post "posts/:id/edit" => "posts#update"
  get 'posts/:id/new' => 'posts#new'
  
  post 'users/new' => 'users#create'

  get '/welcome' => 'sessions#index'
  post '/sessions/new' => 'sessions#create'
  # delete '/sessions/:id' => 'sessions#destroy'
end
