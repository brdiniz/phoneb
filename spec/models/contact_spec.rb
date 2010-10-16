require 'spec_helper'

describe Contact do
  
  it "should not create phone when invalid attributes" do
    p = Contact.new
    p.should_not be_valid
    p.errors.on(:user_id).should_not be_blank
    p.errors.on(:description).should_not be_blank
    p.errors.on(:info).should_not be_blank
  end
  
  it "should associate phones in groups" do
    c = Factory(:contact)
    g = Factory(:group)
    c.group_name = g.name
    c.associate_group.should be_true
  end
  
  it "should view all contacts of my groups" do
    g = Factory(:group)
    g1 = Factory(:group)
    
    u = Factory(:user, :login => "priscila")
    c = Factory(:contact, :user => u)
    c.group_name = g.name
    c.associate_group.should be_true
    
    c1 = Factory(:contact, :user => u)
    c1.group_name = g1.name
    c1.associate_group.should be_true
    
    u1 = Factory(:user, :login => "paola")
    c2 = Factory(:contact, :user => u1)
    c2.group_name = g.name
    c2.associate_group.should be_true

    user = User.find_by_login("brdiniz")
    c3 = Factory(:contact, :user => user)
    c3.group_name = g.name
    c3.associate_group.should be_true
    
    my = Contact.my(user)
    
    my.should include c
    my.should_not include c1
    my.should include c2
    my.should_not include c3
  end
end