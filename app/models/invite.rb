class Invite < ActiveRecord::Base
  belongs_to :group
  belongs_to :contact
  
  validates_presence_of :contact_info
  
  attr_accessor :contact_info
  before_create :associate_contact
  
  def associate_contact
    self.contact = Contact.find_by_info(contact_info)
    return true
  end
  
end
