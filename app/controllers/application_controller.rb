class ApplicationController < ActionController::Base
  helper :all
  protect_from_forgery
  
  def find_current_user
    @current_user = current_user
  end
end
