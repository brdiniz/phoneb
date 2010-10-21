class InvitesController < InheritedResources::Base
  belongs_to :user
  belongs_to :group
  
  before_filter :login_required, :find_current_user
end