class ApplicationController < ActionController::Base
  helper :all
  protect_from_forgery
  
  def find_user
    @user = current_user
  end
end
