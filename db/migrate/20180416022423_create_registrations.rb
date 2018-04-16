class CreateRegistrations < ActiveRecord::Migration[5.1]
  def change
    create_table :registrations do |t|
      t.string :firstname
      t.string :middlename
      t.string :lastname
      t.string :address
      t.string :city
      t.string :state
      t.string :zipcode
      t.string :homephone
      t.string :workphone
      t.string :mobilephone
      t.boolean :preferhome
      t.boolean :preferwork
      t.boolean :prefermobile
      t.string :email
      t.text :description
      t.boolean :registertype_both
      t.boolean :registertype_aircraft
      t.boolean :registertype_pilot
      t.string :aircraftmake
      t.string :aircraftmodel
      t.integer :year
      t.string :basename
      t.string :basestate
      t.string :basezip
      t.string :tailnumber
      t.string :faacode
      t.string :ownername
      t.integer :engine
      t.numeric :speed
      t.integer :seat
      t.numeric :cost
      t.boolean :cabin
      t.boolean :ice
      t.boolean :aircraftanon
      t.string :aircraftalias
      t.string :licensenum
      t.string :licensetype
      t.boolean :rated
      t.boolean :pilotanon

      t.timestamps
    end
  end
end
