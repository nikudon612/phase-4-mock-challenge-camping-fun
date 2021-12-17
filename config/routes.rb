Rails.application.routes.draw do
  resources :signups, only: %i[:create]
  resources :activities, only: %i[index destroy]
  resources :campers, only: %i[index show create]

  get '/campers', to: 'campers#index'
  get '/campers/:id', to: 'campers#show'
  post '/campers', to: 'campers#create'

  get '/activities', to: 'activities#index'
  delete '/activities/:id', to: 'activities#destroy'

  post '/signups', to: 'signups#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
