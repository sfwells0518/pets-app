Rails.application.routes.draw do
  resources :pets 

  # Sign Up Routes:
  get "/signup" => "users#new"
  post "/users" => "users#create"

  # Login Routes:

  get "/login" => "sessions#new"
  post "/sessions" => "sessions#create"
  get "/logout" => "sessions#destroy"


end
