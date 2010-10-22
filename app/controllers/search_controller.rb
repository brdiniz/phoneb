class SearchController < ApplicationController
  load_and_authorize_resource
  
  before_filter :login_required, :find_current_user

  def show
    @results = Group.all(:conditions => ["name LIKE ?", "#{params[:search_text]}%"])
  end
end