Given /^I have a new diary$/ do
  g = Factory(:group)
  c = Factory(:contact, :user => User.first)
  c.groups << g
  
  u = Factory(:user, :name => "Alberto")
  c1 = Factory(:contact, :user => u)
  c1.groups << g
  
  u2 = Factory(:user, :name => "Adailton")
  c2 = Factory(:contact, :user => u2)
  c2.groups << g
end
