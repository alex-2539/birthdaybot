BirthdayBot::Application.routes.draw do

  root to: "main#new"

  post '/post', to: "main#post"
  post '/create', to: "main#create"

  match 'auth/:provider/callback', to: 'sessions#create'
  match 'auth/failure', to: 'sessions#create'
  match 'signout', to: 'sessions#destroy', as: 'signout'
  match 'login', to: 'main#login'


end
