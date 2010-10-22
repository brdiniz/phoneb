class Ability
  include CanCan::Ability
  
  def initialize(user)
    alias_action :index, :new, :create, :show, :to => :basic 
    alias_action :index, :new, :create, :show, :edit, :update, :destroy, :to => :modify
        
    can :modify, Group do |group|
      !group || group.user == user
    end
    
    can :modify, Contact do |contact|
      !contact || contact.user == user
    end
    
    can :basic, :group
    can :basic, :contact
  end
end