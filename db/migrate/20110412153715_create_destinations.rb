class CreateDestinations < ActiveRecord::Migration
  def self.up
    create_table :destinations do |t|
      t.string :name
      t.boolean :category_top_destination
      t.boolean :category_special_offer
      t.boolean :category_main_page
      t.boolean :category_cheap_flights
      t.integer :position
      t.float :fare
      t.text :page_title
      t.text :meta_keywords
      t.text :meta_description
      t.text :body_text
      t.integer :city_id
      t.timestamps
    end
  end

  def self.down
    drop_table :destinations
  end
end
