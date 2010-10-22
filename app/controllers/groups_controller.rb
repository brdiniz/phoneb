class GroupsController < InheritedResources::Base
  load_and_authorize_resource :nested => [:user]
  
  before_filter :login_required, :find_current_user
  belongs_to :user
end