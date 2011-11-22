class CreateFareDetails < ActiveRecord::Migration
  def self.up
    create_table :fare_details do |t|
      t.datetime :from_date
      t.datetime :to_date
      t.integer :airline_class_id
      t.integer :departure_id
      t.integer :airline_id
      t.integer :destination_id
      t.float :fare
      t.timestamps
    end
  end

  def self.down
    drop_table :fare_details
  end
end
