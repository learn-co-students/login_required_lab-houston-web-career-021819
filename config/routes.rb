Rails.application.routes.draw do
  get '/secrets/show', to: 'secrets#show'
  get '/sessions/new', to: 'sessions#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
