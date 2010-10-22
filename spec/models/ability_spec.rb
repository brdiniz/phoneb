require 'spec_helper'

describe Ability do
  
  it "should be able to edit groups if i have permission" do
    u = User.first
    Ability.new(u).can?(:modify, Factory(:group, :user => u)).should be_true
    Ability.new(u).cannot?(:modify, Factory(:group)).should be_true
  end
end