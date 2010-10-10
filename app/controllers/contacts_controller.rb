class ContactsController < InheritedResources::Base
  belongs_to :user
  
  before_filter :login_required, :find_current_user

  def associate_group
    @user = User.find(params[:user_id])
    @contact = Contact.find(params[:id])
    if request.post?
      @contact.update_attributes(params[:contact])
      if @contact.associate_group
        flash[:notice] = "Contato associado a Grupo com sucesso!"
        redirect_to [@user, @contact]
      end
    end
  end  
end