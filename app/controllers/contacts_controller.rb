class ContactsController < InheritedResources::Base
  load_and_authorize_resource
  
  before_filter :login_required, :find_current_user
  
  def index
    @contacts = Contact.all(:conditions => {:user_id => @current_user})
  end
end