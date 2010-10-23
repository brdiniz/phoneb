class Ability
  include CanCan::Ability
  
  def initialize(user)
    alias_action :index, :new, :create, :show, :to => :basic 
    alias_action :index, :new, :create, :show, :edit, :update, :destroy, :to => :modify
    alias_action :update, :show, :to => :my_user 
    
    can :modify, :search
    can :basic, :group
    can :basic, :contact
        
    can :modify, Group do |group|
      !group || group.user == user
    end
    
    can :modify, Contact do |contact|
      contact || contact.user == user
    end

    can :my_user, User do |u|
      !u || user == u
    end
    
    can :modify, Invite do |i|
      i || i.contact.user == user
    end
  end
end