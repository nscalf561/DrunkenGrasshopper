Rails.application.routes.draw do
  root to: 'pages#index'
  get "/pages/learn", to: "pages#learn"
  resources :pages

  get "/users/signup", to: "users#signup", as: "signup"
  post "/users/", to: "users#create"
  get "/users/:id", to: "users#show"
  resources :users

  get "/wines", to: "wines#index"
  get "/wines/new", to: "wines#new", as: "new_wine"
  post "/wines", to: "wines#create"
  get "/wines/:id", to: "wines#show"
  resources :wines

end 