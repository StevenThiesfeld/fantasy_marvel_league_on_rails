class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :require_login
 
    private
 
    def require_login
      if session[:user_id]
        @current_user = User.find(session[:user_id])
      else
        redirect_to "/login"
      end
    end
end
