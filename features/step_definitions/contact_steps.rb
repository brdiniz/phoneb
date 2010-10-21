Given /^I have a contact with info "([^"]*)" with associate in group "([^"]*)"$/ do |contact_info, group_name|
  g = Factory(:group, :name => group_name)
  f = Factory(:contact, :info => contact_info)
  f.groups << g
end
