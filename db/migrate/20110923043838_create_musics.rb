class CreateMusics < ActiveRecord::Migration
  def change
    create_table :musics do |t|
      t.string :name
      t.text :description
      t.integer :kind

      t.references :user
      
      t.string :picture_file_name
      t.datetime :picture_updated_at
      t.timestamps
    end
  end
end
