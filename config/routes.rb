RevlyApp::Application.routes.draw do

  root 'welcome#index'
  get  '/feed', to: "welcome#feed"

  resource :users do
  end

  get '/signup', to: "users#new"

  get '/login', to: "session#new"
  post '/login', to: "session#create"
  delete '/logout', to: "session#destroy"

  get '/new_tile', to: "tiles#index"
  get '/search_song', to: "tiles#search_song"
  post '/search_song', to: "tiles#search_song"
  post '/write_message', to: "tiles#write_message"
  post '/create_tile', to: "tiles#create"


end
