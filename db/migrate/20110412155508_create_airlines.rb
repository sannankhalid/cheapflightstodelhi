class CreateAirlines < ActiveRecord::Migration
  def self.up
    create_table :airlines do |t|
      t.string :name
      t.string :code
      t.timestamps
    end
  end

  def self.down
    drop_table :airlines
  end
end
