class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.text :music
      t.references :venue
      t.references :user
      
      t.timestamps
    end
  end
end
