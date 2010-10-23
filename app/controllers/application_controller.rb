class ApplicationController < ActionController::Base
  helper :all
  protect_from_forgery
  
  rescue_from CanCan::AccessDenied do |exception|
    flash[:error] = exception.message
    redirect_to root_url
  end
  
	def find_current_user
    @current_user = current_user
  end
end
