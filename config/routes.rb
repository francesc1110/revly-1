RevlyApp::Application.routes.draw do

  root "welcome#index"

  resource :users do
  end

  get '/signup', to: "users#new"

  get '/login', to: "session#new"
  post '/login', to: "session#create"
  delete '/logout', to: "session#destroy"

  get '/feed', to: "tiles#index"
  get '/create_post', to: "tiles#new"
  post '/create_post', to: "tiles#create"

end
