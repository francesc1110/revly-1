class WelcomeController < ApplicationController

  def index
    if :logged_in?
      redirect_to feed_path
    else
      render :index
    end
  end

  def feed
    @tiles = Tile.all
    @client = Soundcloud.new(client_id: SOUNDCLOUD_CLIENT_ID)
  end

end
