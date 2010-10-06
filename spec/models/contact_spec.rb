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
end