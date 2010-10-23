class ContactsController < InheritedResources::Base
  load_and_authorize_resource
  
  before_filter :login_required, :find_current_user
  
  def create
    @contact = Contact.new(params[:contact])
    @contact.user = @current_user
    respond_to do |wants|
      if @contact.save
        flash[:notice] = 'Criação de Contato realizada com sucesso!'
        wants.html { redirect_to([@contact]) }
      else
        wants.html { render :action => "new" }
      end
    end
  end
  
  def index
    @contacts = Contact.all(:conditions => {:user_id => @current_user})
  end
end