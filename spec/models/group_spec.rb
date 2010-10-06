require 'spec_helper'

describe Group do
  
  it "should not create group when invalid attributes" do
    g = Group.new
    g.should_not be_valid
    g.errors.on(:name).should_not be_blank
    g.errors.on(:user_id).should_not be_blank
  end
  
  it "should phone associate a group" do
    g = Factory.build(:group)
    g.contacts << Factory(:contact)
    g.contacts.size.should == 1
    g.contacts << Factory(:contact)
    g.contacts.size.should == 2   
  end
end