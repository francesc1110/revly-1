class TilesController < ApplicationController

  def index
  end

  def new
  end

  def select_song
    client = Soundcloud.new(client_id: SOUNDCLOUD_CLIENT_ID)
    @tracks = client.get("/tracks", q: "#{params[:query]}", limit: 5, order: "hotness")
  end

  def write_message
  end

  def create
    user = User.find(session[:id])
    user.tiles.create(tile_params)
  end

private

  #security feature to 'white-list' certain params values
  def tile_params
    params.require(:tile).permit(:message, :track_id, :color, :query)
  end




end
