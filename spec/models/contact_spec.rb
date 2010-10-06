require 'spec_helper'

describe Contact do
  
  it "should not create phone when invalid attributes" do
    p = Contact.new
    p.should_not be_valid
    p.errors.on(:user_id).should_not be_blank
    p.errors.on(:description).should_not be_blank
    p.errors.on(:info).should_not be_blank
  end
  
  it "should associate phones in user" do
    u = Factory.build(:user)
    u.should be_valid
    u.contacts << Factory(:contact)
    u.contacts.size.should == 1
    u.contacts << Factory(:contact)
    u.contacts.size.should == 2
  end
end