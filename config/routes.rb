Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/tasks", to: "tasks#tasks"
  get "/task/:id", to: "tasks#task", as: "task"
  get "/tasks/new",  to: "tasks#new", as: "new"
  post "/tasks", to: "tasks#create"
  get "/tasks/:id/edit", to: "tasks#edit", as: "edit"
  patch "/task/:id", to: "tasks#update", as: "update"
  delete "/tasks/:id", to: "tasks#destroy", as: "destroy"
end
