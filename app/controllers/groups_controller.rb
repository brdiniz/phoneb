class GroupsController < InheritedResources::Base
  load_and_authorize_resource :nested => [:user]
   
  before_filter :login_required, :find_current_user
  
  def create
    @group = Group.new(params[:group])
    @group.user = @current_user
    respond_to do |wants|
      if @group.save
        flash[:notice] = 'Criação de Grupo realizada com sucesso!'
        wants.html { redirect_to([@group]) }
      else
        wants.html { render :action => "new" }
      end
    end
  end
  
  def index
    @groups = Group.all(:conditions => {:user_id => @current_user})
  end
end