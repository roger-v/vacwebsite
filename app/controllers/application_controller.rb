class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  helper_method :current_user, :logged_in?, :is_admin?
  #The above line makes these methods available to the views
  
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id] #return user if they're logged in
    #session[:user_id] returns NIL if user is not logged in
  end
  
  def is_admin?
    return logged_in? && current_user.admin
  end
  
  def logged_in?
    !!current_user #boolean conversion based on nil-ness
  end
  
  def require_user
    if (!logged_in?)
      flash[:danger] = "You must be logged in to do that."
      redirect_to root_path
    end
  end
  
end
