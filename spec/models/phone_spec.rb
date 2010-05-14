require 'spec_helper'

describe Phone do
  
  it "should not create phone when invalid attributes" do
    p = Phone.new
    p.should_not be_valid
    p.errors.on(:user).should_not be_blank
    p.errors.on(:ddd).should_not be_blank
    p.errors.on(:number).should_not be_blank
  end
  
  it "should associate phones in user" do
    Phone.destroy_all
    u = User.first
    u.phones << Factory(:phone)
    User.first.phones.size.should == 1
    u.phones << Factory(:phone)
    User.first.phones.size.should == 2
  end
end