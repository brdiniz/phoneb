Given /^I have a invite with contact "([^"]*)" in group "([^"]*)"$/ do |contact_info, group_name|
  c = Factory(:contact, :info => contact_info)
  Factory(:invite, :contact => c, :group => Group.find_by_name(group_name))
end
