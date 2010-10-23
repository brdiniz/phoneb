require 'spec_helper'

describe Contact do
  
  it "should not create phone when invalid attributes" do
    p = Contact.new
    p.should_not be_valid
    p.errors.on(:user_id).should_not be_blank
    p.errors.on(:description).should_not be_blank
    p.errors.on(:info).should_not be_blank
  end
  
  it "should view only my contact" do
    g = Factory(:group, :user => User.first)
    c = Factory(:contact)
    c1 = Factory(:contact)
    c2 = Factory(:contact)
    c3 = Factory(:contact, :user => User.first)
    g.contacts << c
    g.contacts << c2
    g.contacts << c3
        
    list = Contact.my(User.first)
    
    list.should include c
    list.should_not include c1
    list.should include c2
    list.should_not include c3
  end
  
  it "should sort by name" do
    u = Factory(:user, :name => "Paulo Paulada")
    u1 = Factory(:user, :name => "Paulo Cintura")
    u2 = Factory(:user, :name => "Paulo Kobayashi")
    
    c = Factory(:contact, :user => u)
    c1 = Factory(:contact, :user => u1)
    c2 = Factory(:contact, :user => u2)

    list = Contact.startwith("P")
    list[0].should == c1
    list[1].should == c2
    list[2].should == c
  end
end