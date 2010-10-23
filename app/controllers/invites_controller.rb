class InvitesController < InheritedResources::Base
  load_and_authorize_resource :nested => [:contact]
  
  before_filter :find_parents, :login_required, :find_current_user
  
  def create
    @invite = Invite.new(params[:invite])
    @invite.group = @group if @group
    @invite.contact = @contact if @contact
    respond_to do |wants|
      if @invite.save
        flash[:notice] = 'Criação de Convite realizada com sucesso!'
        wants.html { redirect_to([@invite.contact, @invite]) }
      else
        wants.html { render :action => "new" }
      end
    end
  end
  
  def update
    g = @invite.group
    @invite.status = params[:status] if params[:status]
    if @invite.save
      @invite.destroy if @invite.status == "approve"
      flash[:notice] = 'Alteração de Convite realizada com sucesso!'
      redirect_to [g]
    end
  end
  
  def delete
    delete! do |format|
      format.html { redirect_to [@invite.group] }
    end
  rescue Exception => e
    flash[:error] = e.message
    redirect_to(@invite.group)
  end
  
  private
  def find_parents
    @group = Group.find(params[:group_id]) if params[:group_id]
    @contact = Contact.find(params[:contact_id]) if params[:contact_id]
    @invite = Invite.find(params[:id]) if params[:id]
  end
end