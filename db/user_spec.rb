require "./user.rb"
require "test/unit"
 
class TestUser < Test::Unit::TestCase
  def setup
    #assert user with valid information can be created
    assert(@user = User.new("John", "Public", "jp@test.com", "1NewTest!"), 'User not created successfully')
    #assert attempt to create new user with invalid information results in error and no new user is created
      #form validation should take place on form page(s)
  end
  def sgFirstName
    @user = User.new("John", "Public", "jp@test.com", "1NewTest!")
    #assert changes to user's first name can be made and resturned
    assert_equal("John", @user.first_name, 'first_name did not return set first name')
    @user.first_name = "Blake"
    assert_equal("Blake", @user.first_name, 'first_name did not return changed first name')
    #assert attempt to change first name including invalid characters results in error and no Name change
      #form validation should take place on form page(s)
  end
  def sgLastName
    @user = User.new("John", "Public", "jp@test.com", "1NewTest!")
    #assert changes to user's last name can be made and resturned
    assert_equal("Public", @user.last_name, 'last_name did not return set last name')
    @user.last_name("Potts")
    assert_equal("Potts", @user.last_name, 'last_name did not return changed last name')
    #assert attempt to change last name including invalid characters results in error and no Name change
      #form validation should take place on form page(s)
  end
  def sgEmail
    @user = User.new("John", "Public", "jp@test.com", "1NewTest!")
    #assert changes can be made to user's Email can be made and can be resturned
    assert_equal("jp@test.com", @user.email, 'email did not return set email')
    @user.email = "bp@test.com"
    assert_equal("bp@test.com", @user.email, 'email did not return changed email')
    #assert attempt to change Email with invalid format results in error and no Email change
      #form validation should take place on form page(s)
  end
  def sgPassword
    @user = User.new("John", "Public", "jp@test.com", "1NewTest!")
    #assert changes can be made to user's Password can be made and can be resturned
    assert_equal("1NewTest!", @user.password, 'password did not return set password')
    @user.email = "New^2Pass"
    assert_equal("New^2Pass", @user.password, 'password did not return changed password')
    #assert attempt to change Password with invalid format results in error and no Password change
      #form validation should take place on form page(s)
  end
end