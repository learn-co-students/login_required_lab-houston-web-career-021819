Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
resources :secrets
resources :sessions
#get '/sessions/new' => 'sessions#new'
#post '/sessions/new' => 'sessions#create'
post '/sessions' => 'sessions#destroy'
get '/secrets/show', to: 'secrets#show', as: 'show_secret'
end
