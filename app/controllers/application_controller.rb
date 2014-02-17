class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def logged_in?
    current_user.present?
  end

  def song_length_converter(milliseconds)
    total_seconds = milliseconds.to_f / 1000
    seconds_placeholder = ( total_seconds % 60 ).to_i
    minutes_placeholder = ( (total_seconds - seconds_placeholder) / 60 ).to_i
    track_length = "#{minutes_placeholder}:#{seconds_placeholder}"
  end

  helper_method :current_user, :logged_in?, :song_length_converter
end
