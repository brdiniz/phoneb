class Invite < ActiveRecord::Base
  belongs_to :group
  belongs_to :contact
  
  attr_accessor :contact_info, :group_name
  before_create :associate_contact
  
  def associate_contact
    self.group = Group.find_by_name(group_name) if group_name
    self.contact = Contact.find_by_info(contact_info) if contact_info
    return true
  end
  
end
