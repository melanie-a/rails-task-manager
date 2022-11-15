Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # resources :tasks
  get '/tasks', to: 'tasks#index'
  # Créer une nouvelle tâche :
  get '/tasks/new', to: 'tasks#new'
  post '/tasks', to: 'tasks#create'
  # Mettre à jour une tâche :
  get '/tasks/:id/edit', to: 'tasks#edit', as: :task_edit
  patch 'tasks/:id', to: 'tasks#update'
  # Supprimer une tâche
  delete 'tasks/:id', to: 'tasks#destroy', as: :task_destroy
  get '/tasks/:id', to: 'tasks#show', as: :task
end
