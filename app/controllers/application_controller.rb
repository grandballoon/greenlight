class ApplicationController < ActionController::Base
  before_action :authorized
  helper_method :logged_in?, :current_producer

  def current_producer
    @producer = Producer.find_by(id: session[:logged_in_producer_id])
  end

  def logged_in?
    !!current_producer
  end

  def authorized
    unless logged_in?
    flash[:notice] = "This area is for HBO employees only"
    redirect_to new_session_path
    end
  end

end
