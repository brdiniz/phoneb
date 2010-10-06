class CreateGroupPhone < ActiveRecord::Migration
  def self.up
    drop_table :groups_users
    create_table :groups_phones, :id => false do |t|
      t.column :group_id, :integer
      t.column :phone_id, :integer
    end
  end

  def self.down
    drop_table :groups_phones
    create_table :groups_users, :id => false do |t|
      t.column :group_id, :integer
      t.column :user_id, :integer
    end
  end
end
