class RemovePasswordFromUsersAttempt2 < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :password
  end
end
