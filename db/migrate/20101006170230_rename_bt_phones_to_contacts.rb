class RenameBtPhonesToContacts < ActiveRecord::Migration
  def self.up
    rename_column :groups_phones, :phone_id, :contact_id
    rename_table :groups_phones, :groups_contacts
  end

  def self.down
    rename_column :groups_phones, :contact_id, :phone_id
    rename_table :groups_contacts, :groups_phones
  end
end
