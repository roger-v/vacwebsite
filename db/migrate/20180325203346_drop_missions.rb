class DropMissions < ActiveRecord::Migration[5.1]
  def change
    drop_table :missions
  end
end
