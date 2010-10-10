class Contact < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :description, :info, :user_id
  has_and_belongs_to_many :groups, :join_table => :groups_contacts
  
  named_scope :my, lambda { |user| 
      {:joins => :groups,
      :conditions => ["groups_contacts.group_id IN (SELECT g.id From groups g INNER JOIN "+
        "groups_contacts gc1 ON g.id = gc1.group_id INNER JOIN "+
        "contacts c ON gc1.contact_id = c.id WHERE c.user_id = ?)", "#{user.id}"]
    }}
    
  named_scope :startwith, lambda { |alphabet| 
    {:joins => :user, 
    :conditions => ["users.name LIKE ?", "#{alphabet}%"] }}
  
  attr_accessor :group_name
  
  def associate_group
    self.groups << Group.find_by_name(group_name)
    return true
  end
end
