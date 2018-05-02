require 'test_helper'

class PassengerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  def setup
    @passengers = Passenger.new(firstname: "firstname", lastname: "lastname", militarybranch: "branch", phone: 1234567899, militaryrank: "Sergeant")
  end
  
  test "should be valid" do
    assert @passengers.valid?
  end
  
  test "firstname should be present" do 
    @passengers.firstname=""
    assert_not @passengers.valid?
  end
  
  test "lastname should be present" do 
    @passengers.lastname=""
    assert_not @passengers.valid?
  end
  
  test "militarybranch should be present" do 
    @passengers.militarybranch=""
    assert @passengers.valid?
  end
  
  test "phone should be present" do 
    @passengers.phone=""
    assert @passengers.valid?
  end
  
  test "militaryrank should be present" do 
    @passengers.militaryrank=""
    assert @passengers.valid?
  end
  
end
