class CreateAirlineClasses < ActiveRecord::Migration
  def self.up
    create_table :airline_classes do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :airline_classes
  end
end
