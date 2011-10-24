class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :name
      t.string :number
      t.string :street
      t.string :city
      t.string :state
      t.string :zip_code
      
      t.references :user
    end
  end
end
