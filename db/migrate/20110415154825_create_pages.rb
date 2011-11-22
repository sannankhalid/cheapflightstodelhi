class CreatePages < ActiveRecord::Migration
  def self.up
    create_table :pages do |t|
      t.string :name
      t.text :content
      t.string :title
      t.text :meta_keywords
      t.text :meta_description

      t.timestamps
    end
  end

  def self.down
    drop_table :pages
  end
end
