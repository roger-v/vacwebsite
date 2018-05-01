require 'test_helper'

class RegistrationTest < ActiveSupport::TestCase
    
    def setup
        @registration = Registration.new(firstname: "Slim", lastname: "Jim", address:"1234 Harvey", city: "Houston", state:"Texas", zipcode: "52529", email:"slimjim@gmail.com")
    end
    
    test "should be valid" do 
        assert @registration.valid?
    end
    
    test "firstname should be present" do 
    @registration.firstname=""
    assert_not @registration.valid?
    end
    
    test "lastname should be present" do 
    @registration.lastname=""
    assert_not @registration.valid?
    end
    
    test "address should be present" do 
    @registration.address=""
    assert_not @registration.valid?
    end
    
    test "city should be present" do 
    @registration.city=""
    assert_not @registration.valid?
    end
    
    test "state should be present" do 
    @registration.state=""
    assert_not @registration.valid?
    end
    
    test "zipcode should be present" do 
    @registration.zipcode=""
    assert_not @registration.valid?
    end
    
    test "email should be present" do 
    @registration.firstname=""
    assert_not @registration.valid?
    end
    
end