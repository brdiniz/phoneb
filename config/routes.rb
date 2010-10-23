ActionController::Routing::Routes.draw do |map|
  map.resources :groups do |group|
    group.resources :invites
  end

  map.resources :contacts do |contact|
    contact.resources :invites
  end

  map.root :controller => :users, :action => :show
  map.find 'diary/:alphabet', :controller => :users, :action => :show

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
