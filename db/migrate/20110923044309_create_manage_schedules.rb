class CreateManageSchedules < ActiveRecord::Migration
  def change
    create_table :manage_schedules do |t|

      t.timestamps
    end
  end
end
