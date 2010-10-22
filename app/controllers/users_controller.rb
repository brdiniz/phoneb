class UsersController < InheritedResources::Base
  before_filter :login_required, :find_current_user, :find_user
  
  def show
    @alphabet = params[:alphabet]
    @alphabet = "A" if @alphabet.blank?
    @contacts = Contact.my(@user).startwith(@alphabet)
  end
  
  def find_user
    @user = current_user if @user.nil?
  end
end