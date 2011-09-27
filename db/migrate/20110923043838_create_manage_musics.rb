class CreateManageMusics < ActiveRecord::Migration
  def change
    create_table :manage_musics do |t|

      t.timestamps
    end
  end
end
