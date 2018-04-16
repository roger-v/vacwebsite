class AddConfirmationToDonations < ActiveRecord::Migration[5.1]
  def change
    add_column :donations, :confirmed, :boolean, default: false
  end
end
