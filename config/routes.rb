Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post '/jobs', to: 'jobs#create'
  get '/jobs', to: 'jobs#index'
  get '/jobs/:id', to: 'jobs#show'
  delete '/jobs/:id', to: 'jobs#destroy'
end
