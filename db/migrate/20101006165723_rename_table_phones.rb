class RenameTablePhones < ActiveRecord::Migration
  def self.up
    rename_table :phones, :contacts
  end

  def self.down
    rename_table :contacts, :phones
  end
end
