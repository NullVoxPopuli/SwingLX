class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.string :name
      t.text :description
      
      t.references :user
      t.references :address
      
      t.string :picture_file_name
      t.datetime :picture_updated_at
      
      t.timestamps
    end
  end
end
