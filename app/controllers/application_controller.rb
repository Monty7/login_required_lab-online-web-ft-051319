class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user

  def current_user
   
    session[:name]
  end

  private

  def require_logged_in
    if !current_user
      redirect_to controller: 'sessions', action: 'new'
    end
  end

end
