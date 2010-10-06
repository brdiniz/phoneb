class RenameColumnsPhones < ActiveRecord::Migration
  def self.up
    add_column :phones, :description, :string
    add_column :phones, :info, :string
    remove_column :phones, :ddd
    remove_column :phones, :number
    remove_column :phones, :ramal
    remove_column :phones, :extension
  end

  def self.down
    remove_column :phones, :description
    remove_column :phones, :info
    add_column :phones, :ddd, :string
    add_column :phones, :number, :string
    add_column :phones, :ramal, :string
    add_column :phones, :extension, :string
  end
end
