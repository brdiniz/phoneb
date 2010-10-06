ActionController::Routing::Routes.draw do |map|
  map.resources :users do |user|
    user.resources :groups
    user.resources :contacts, :member => {:associate_group => [:get, :post]}
  end
  
  map.root :user

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
