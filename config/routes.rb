ActionController::Routing::Routes.draw do |map|
  map.resources :users do |user|
    user.resources :groups do |group|
      group.resources :invites
    end
  end
  
  map.resources :contacts do |contact|
    contact.resources :invites
  end
  
  map.root :user
  map.find 'diary/:alphabet', :controller => :users, :action => :show

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
