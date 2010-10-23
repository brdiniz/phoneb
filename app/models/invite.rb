class Invite < ActiveRecord::Base
  belongs_to :group
  belongs_to :contact
  
  STATUS = ["approve", "disapprove", nil]
  
  attr_accessor :contact_info, :group_name
  before_create :associate_contact
  validates_inclusion_of :status, :in => STATUS
  
  before_save :verify_status
  
  attr_accessor :status
  
  def associate_contact
    self.group = Group.find_by_name(group_name) if group_name
    self.contact = Contact.find_by_info(contact_info) if contact_info
    return true
  end
  
  def verify_status
    if self.status == "approve"
      self.group.contacts << self.contact
    end
  end
  
end
