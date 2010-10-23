class AddStatusInInvites < ActiveRecord::Migration
  def self.up
    add_column :invites, :status, :string
  end

  def self.down
    remove_column :invites, :status
  end
end
