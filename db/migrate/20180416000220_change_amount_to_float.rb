class ChangeAmountToFloat < ActiveRecord::Migration[5.1]
  def change
    change_column :donations, :amount, :float
  end
end
