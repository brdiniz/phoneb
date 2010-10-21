ActionController::Routing::Routes.draw do |map|
  map.resources :users do |user|
    user.resources :groups do |group|
      group.resources :invites
    end
    user.resources :contacts, :member => {:associate_group => [:get, :post]}
  end
  
  map.root :user
  map.find 'diary/:alphabet', :controller => :users, :action => :show

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
