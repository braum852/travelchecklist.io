Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'sessions#welcome'

  resources :users
  
  get '/login', to: "sessions#login"
  post '/login', to: "sessions#create"
  get '/welcome', to: "sessions#welcome"
  get '/home', to: "sessions#home"
  post  '/logout', to: 'sessions#destroy'
  get '/logout', to: 'sessions#destroy'

  resources :locations, only: [:index, :show] do
    resources :wonders, only: [:index, :show]
  end
  

end

#location_wonders GET    /locations/:location_id/wonders(.:format)                                                         wonders#index
# location_wonder GET    /locations/:location_id/wonders/:id(.:format)                                                     wonders#show
#  locations GET    /locations(.:format)                                                                              locations#index
#   location GET    /locations/:id(.:format)                                                                          locations#show