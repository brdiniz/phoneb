class Contact < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :description, :info, :user_id
end
