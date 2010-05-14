class RemoveRamalInPhone < ActiveRecord::Migration
  def self.up
    remove_column :phones, :ramal
  end

  def self.down
    add_column :phone, :ramal, :string
  end
end
