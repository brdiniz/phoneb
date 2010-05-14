class UsersController < InheritedResources::Base
  before_filter :login_required
  before_filter :find_user
end