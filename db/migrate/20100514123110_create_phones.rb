class CreatePhones < ActiveRecord::Migration
  def self.up
    create_table :phones do |t|
      t.string :ddd
      t.string :number
      t.string :ramal
      t.string :extension
      t.belongs_to :user

      t.timestamps
    end
  end

  def self.down
    drop_table :phones
  end
end
