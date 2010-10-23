class SearchController < ApplicationController
  
  before_filter :login_required, :find_current_user

  def show
    @results = Group.all(:conditions => ["name LIKE ?", "#{params[:search_text]}%"])
  end
end