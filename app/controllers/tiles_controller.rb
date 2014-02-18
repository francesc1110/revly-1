class TilesController < ApplicationController

  def index
  end

  def search_song
    client = Soundcloud.new(client_id: SOUNDCLOUD_CLIENT_ID)
    @tracks = client.get("/tracks", q: "#{params[:query]}", limit: 5, order: "hotness")
  end

  def write_message
  end

  def create
    user = User.find(session[:user_id])
    user.tiles.create(message: params[:tile_message], track_id: params[:track_id])
    redirect_to root_path
  end


end
