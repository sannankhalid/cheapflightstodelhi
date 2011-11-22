class CreateDestinationPhotos < ActiveRecord::Migration
  def self.up
    create_table :destination_photos do |t|
      t.string :picture_file_name
      t.string :picture_content_type
      t.integer :picture_file_size
      t.integer :destination_id

      t.timestamps
    end
  end

  def self.down
    drop_table :destination_photos
  end
end