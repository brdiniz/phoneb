class CreateInvites < ActiveRecord::Migration
  def self.up
    create_table :invites do |t|
      t.belongs_to :group
      t.belongs_to :contact

      t.timestamps
    end
  end

  def self.down
    drop_table :invites
  end
end
