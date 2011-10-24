class GenerateRelationships < ActiveRecord::Migration
  def up
      create_table :events_instructors, :id => false do |t|
        t.references :event
        t.references :instructor
        t.references :user
      end
      
      create_table :events_venues, :id => false do |t|
        t.references :event
        t.references :venue
        t.references :user
      end
      create_table :events_musics, :id => false do |t|
        t.references :event
        t.references :music
        t.references :user
      end
  end

  def down
    drop_table :events_instructors
    drop_table :events_venues
    drop_table :events_musics
  end
end

