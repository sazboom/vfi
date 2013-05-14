class CreateDrivers < ActiveRecord::Migration
  def self.up
    create_table :drivers do |t|
      t.string :name
      t.string :email
      t.string :street1
      t.string :street2
      t.string :city
      t.string :zip
      t.timestamps
    end
  end

  def self.down
    drop_table :drivers
  end
end
