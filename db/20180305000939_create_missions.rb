class CreateMissions < ActiveRecord::Migration[5.1]
  def change
    create_table :missions do |t|
      t.date :date
      t.string :from
      t.string :to
      t.integer :passengers
      t.integer :weight
      t.timestamps
    end
  end
end
