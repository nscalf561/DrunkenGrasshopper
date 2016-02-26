Rails.application.routes.draw do
  root to: 'pages#index'
  # get "/pages/learn", to: "pages#learn"
  resources :pages

  # post "/users/", to: "users#create"
  # get "/users/:id", to: "users#show"
  get "/users/signup", to: "users#new"
  resources :users

  # get "/wines", to: "wines#index"
  # get "/wines/new", to: "wines#new", as: "new_wine"
  # post "/wines", to: "wines#create"
  # get "/wines/:id", to: "wines#show"
  resources :wines

  resources :infos

  #logs in a user
  get "/login", to: "sessions#new"
  #creates a new session for user logins
  post "/sessions", to: "sessions#create"
  delete "/sessions", to: "sessions#destroy"

end 