RevlyApp::Application.routes.draw do

  root "welcome#index"

  resource :users do
  end

  get '/signup', to: "users#new"

  get '/login', to: "session#new"
  post '/login', to: "session#create"
  delete '/logout', to: "session#destroy"

  get '/feed', to: "tiles#index"
  post '/feed', to: "tiles#submit_tile"

  get '/tile_search_song', to: "tiles#new"
  post '/tile_search_song', to: "tiles#select_song"
  get '/tile_select_song', to: "tiles#select_song"
  post '/tile_select_song', to: "tiles#write_message"

end
