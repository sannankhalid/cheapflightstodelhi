class CreateDepartures < ActiveRecord::Migration
  def self.up
    create_table :departures do |t|
      t.string :airport
      t.integer :city_id
      t.timestamps
    end
  end

  def self.down
    drop_table :departures
  end
end
