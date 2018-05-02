class Addpassengers < ActiveRecord::Migration[5.1]
  def change
     create_table "passengers", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.string "militarybranch"
    t.string "phone"
    t.string "militaryrank"
    t.string "healthcarefacility"
    t.integer "numberofpassengers"
    t.integer "passengerweight"
    t.string "departure"
    t.string "destination"
    t.string "date"
  end
  end
end
