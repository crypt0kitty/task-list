Rails.application.routes.draw do
  root to: 'tasks#index'
  # resources :tasks

  # Routes that operate on the book collection
  get '/tasks', to: 'tasks#index', as: 'tasks'
  post '/tasks', to: 'tasks#create'

  # routes that operate on individual task
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/tasks/new', to: 'tasks#new', as: 'new_task'
  get '/tasks/:id', to: 'tasks#show', as: 'task'
  get '/tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'

  patch 'tasks/:id/toggle_complete', to: 'tasks#toggle_complete'

  patch '/tasks/:id', to: 'tasks#update'
  delete '/tasks/:id', to: 'tasks#destroy'
end
