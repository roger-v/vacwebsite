class AddBoolsToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :veteran, :boolean, default: false
    add_column :users, :pilot, :boolean, default: false
    add_column :users, :donor, :boolean, default: false
  end
end
