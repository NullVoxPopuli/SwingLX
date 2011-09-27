class CreateManageInstructors < ActiveRecord::Migration
  def change
    create_table :manage_instructors do |t|

      t.timestamps
    end
  end
end
