class WelcomeController < ApplicationController

  def index
    if session[:user_id] != nil
      redirect_to feed_path
    else
      render(:index)
    end
  end

  def feed
    if session[:user_id] == nil
      redirect_to root_path
    else
      @tiles = Tile.order("created_at DESC")
      @client = Soundcloud.new(client_id: SOUNDCLOUD_CLIENT_ID)
    end
  end

end
