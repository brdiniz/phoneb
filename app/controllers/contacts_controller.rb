class ContactsController < InheritedResources::Base
  belongs_to :user
  
  before_filter :login_required, :find_user

  def associate_group
    @contact = params[:id]
    
  end  
end