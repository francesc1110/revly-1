class TilesController < ApplicationController

  def index
  end

  def new
  end

  def create
    user = User.find(session[:id])
    user.tiles.create(tile_params)
  end

private

  #security feature to 'white-list' certain params values
  def tile_params
    params.require(:tile).permit(:message, :track_id, :color)
  end




end
