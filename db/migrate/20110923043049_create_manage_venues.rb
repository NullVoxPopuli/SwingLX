class CreateManageVenues < ActiveRecord::Migration
  def change
    create_table :manage_venues do |t|

      t.timestamps
    end
  end
end
