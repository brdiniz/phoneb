class ContactsController < InheritedResources::Base
  belongs_to :user
  
  before_filter :login_required, :find_user
end