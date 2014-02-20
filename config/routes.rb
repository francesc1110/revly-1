RevlyApp::Application.routes.draw do

  root 'welcome#index'
  get  '/feed', to: "welcome#feed"

  resource :users, except: [:new, :show, :edit, :destroy]
  get '/signup', to: "users#new"
  get '/profile', to: "users#show"
  get '/edit_profile', to: "users#edit"
  delete '/delete_profile', to: "users#destroy"

  get '/login', to: "session#new"
  post '/login', to: "session#create"
  delete '/logout', to: "session#destroy"

  get '/new_tile', to: "tiles#index"
  get '/search_song', to: "tiles#search_song"
  post '/search_song', to: "tiles#search_song"
  post '/write_message', to: "tiles#write_message"
  post '/create_tile', to: "tiles#create"
  get '/tile_history', to: "tiles#history"
  delete '/delete_tile', to: "tiles#destroy"

  get '/feedback', to: "users#feedback"

end
