class TilesController < ApplicationController

  def index
  end

  def search_song
    client = Soundcloud.new(client_id: SOUNDCLOUD_CLIENT_ID)
    @tracks = client.get("/tracks", q: "#{params[:query]}", limit: 10, order: "hotness")
  end

  def write_message
  end

  def create
    user = User.find(session[:user_id])
    user.tiles.create(message: params[:tile_message_write], track_id: params[:track_id])
    redirect_to root_path
  end

  def history
    @client = Soundcloud.new(client_id: SOUNDCLOUD_CLIENT_ID)
    @user_tiles = Tile.where(user_id: session[:user_id]).order("created_at DESC")
  end

  def destroy
    tile = Tile.find(params[:format])
    tile.destroy
    redirect_to tile_history_path
  end

end
