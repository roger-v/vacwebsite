class CreateDonations < ActiveRecord::Migration[5.1]
  def change
    create_table :donations do |t|
      t.string :firstname
      t.string :lastname
      t.string :address
      t.string :city
      t.string :state
      t.string :zipcode
      t.string :phone
      t.string :email
      t.integer :amount
      
      t.string :campaign
      
      t.boolean :anonymous
      t.string :donoralias
      t.string :honoree
      
      t.timestamp
    end
  end
end
