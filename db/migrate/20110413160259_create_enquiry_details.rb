class CreateEnquiryDetails < ActiveRecord::Migration
  def self.up
    create_table :enquiry_details do |t|
      t.string :email
      t.string :mobile

      t.integer :destination_id
      t.timestamps
    end
  end

  def self.down
    drop_table :enquiry_details
  end
end
