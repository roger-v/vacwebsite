require 'test_helper'

class MissionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  def setup
    @mission = Mission.new(date: "2018-06-10",from: "Boston", to: "Los Angeles", passengers:2, weight: 300)
  end
  
  test "should be valid" do
    assert @mission.valid?
  end
  
  test "date should be present" do 
    @mission.date=""
    assert @mission.valid?
  end
  
  test "from should be present" do 
    @mission.from=""
    assert_not @mission.valid?
  end
  
  test "to should be present" do 
    @mission.to=""
    assert_not @mission.valid?
  end
  
  test "passengers should be present" do 
    @mission.passengers=""
    assert_not @mission.valid?
  end
  
  test "weight should be present" do 
    @mission.weight=""
    assert_not @mission.valid?
  end
  
  
end
