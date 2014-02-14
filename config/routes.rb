RevlyApp::Application.routes.draw do

  root "welcome#index"

  resources :users do
  end

  get '/signup', to: "users#new"
  get '/login', to: "session#new"
  post '/login', to: "session#create"

end
