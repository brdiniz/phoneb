class InvitesController < InheritedResources::Base
  load_and_authorize_resource :nested => [:user, :group]
  
  belongs_to :user, :group
  
  before_filter :login_required, :find_current_user
end