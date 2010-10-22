class ApplicationController < ActionController::Base
  helper :all
  protect_from_forgery
  
	def current_user
		@current_user
	end
  
  def find_current_user
    @current_user = current_user
  end
end
