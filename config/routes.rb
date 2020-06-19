Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :application

  get '/', to: 'sessions#new'

  post '/sessions', to: 'sessions#create'
  get '/sessions', to: 'sessions#new'
  get '/secrets', to: 'secrets#show'
  post '/sessions/destroy', to: 'sessions#destroy'
end
