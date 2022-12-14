Rails.application.routes.draw do
  get "/phones" => "phones#index"
  #index

  get "phones/:id" => "phones#show"
  #show route

  post "/phones" => "phones#create"
  #create route

  patch "/phones/:id" => "phones#update"
  #update route

  delete "phones/:id" => "phones#destroy"

  post "/user" => "user#create"
  #create a user

  post "/sessions" => "sessions#create"
  #user login
end
