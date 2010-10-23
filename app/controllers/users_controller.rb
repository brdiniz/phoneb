class UsersController < InheritedResources::Base
  load_and_authorize_resource
  
  before_filter :login_required, :find_current_user
  
  def show
    @user = current_user
    @alphabet = params[:alphabet]
    @alphabet = "A" if @alphabet.blank?
    @contacts = Contact.my(@user).startwith(@alphabet).uniq
  end
end