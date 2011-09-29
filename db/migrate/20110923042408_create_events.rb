class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :city
      t.string :state
      t.integer :kind
      t.text :welcome_info
      t.text :contact_info
      t.text :css_style
      
      t.references :user

      
      t.string :header_file_name
      t.datetime :header_updated_at

      t.timestamps
    end
  end
end
