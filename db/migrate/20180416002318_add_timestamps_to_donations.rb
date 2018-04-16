class AddTimestampsToDonations < ActiveRecord::Migration[5.1]
  def change
    add_column :donations, :created_at, :datetime
    add_column :donations, :updated_at, :datetime
  end
end
