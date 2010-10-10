class GroupsController < InheritedResources::Base
  belongs_to :user
  
  before_filter :login_required
  before_filter :find_current_user  
end