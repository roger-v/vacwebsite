require 'test_helper'

class DonationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  def setup
    @donation = Donation.new(amount: 1.00)
  end
  
  test "should be valid" do
    assert @donation.valid?
  end
  
  test "amount should be present" do 
    @donation.amount=""
    assert_not @donation.valid?
  end
  
end
