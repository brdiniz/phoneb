class Phone < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :ddd, :number, :user
  
end
