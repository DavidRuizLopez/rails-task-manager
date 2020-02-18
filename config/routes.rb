Rails.application.routes.draw do
  get 'tasks', to: 'task#index'
  get 'task/new', to: 'task#new'
  post 'task/new', to: 'task#create', as: :new
  get 'task/:id/edit', to: 'task#edit'
  patch 'task/:id', to: 'task#update'
  delete 'task/:id', to: 'task#destroy', as: :delete
  get 'task/:id', to: 'task#show', as: :show
end
