class CreateSubscribeDetails < ActiveRecord::Migration
  def self.up
    create_table :subscribe_details do |t|
      t.string :email
      t.string :name
      t.timestamps
    end
  end

  def self.down
    drop_table :subscribe_details
  end
end
