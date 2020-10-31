Rails.application.routes.draw do
  get '/tasks', to: 'tasks#index'
  get 'tasks/show'
  get 'tasks/new'
  post '/tasks', to: 'tasks#new'

  # routes that operate on individual task
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/tasks/:id', to: 'tasks#show'
  get '/tasks/:id', to: 'tasks#new'
  get '/tasks/:id', to: 'tasks#new'

  get '/tasks/:id/edit', to: 'tasks#edit'
  patch '/tasks/:id', to: 'tasks#update'
  delete '/tasks/:id', to: 'tasks#destroy'
end
