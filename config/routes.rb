Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/flights', to: 'flights#index'
  delete '/flights/:id', to: 'flights#destroy' #unsure if this should be passengers or flights
  get '/airlines/:id', to: 'airlines#show'
end
