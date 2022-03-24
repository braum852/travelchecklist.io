Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :users
  
  get '/login', to: "sessions#login"
  post '/login', to: "sessions#create"
  get '/welcome', to: "sessions#welcome"
  get '/wonder', to: "sessions#wonder"
  post  '/logout', to: 'sessions#destroy'
  get '/logout', to: 'sessions#destroy'

  root 'sessions#welcome'

end
