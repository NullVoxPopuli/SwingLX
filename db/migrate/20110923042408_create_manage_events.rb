class CreateManageEvents < ActiveRecord::Migration
  def change
    create_table :manage_events do |t|
      t.string :name
      t.string :city
      t.string :state
      
      t.references :user
      
      t.timestamps
    end
  end
end
