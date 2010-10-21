class Group < ActiveRecord::Base
  belongs_to :user
  has_and_belongs_to_many :contacts, :join_table => :groups_contacts
  has_many :invites
    
  validates_presence_of :name, :user_id
  validates_uniqueness_of :name
  
  attr_accessor :phone
  after_save :associate_phone
  
  def associate_phone
    return true
    phones << phone
  end
end
