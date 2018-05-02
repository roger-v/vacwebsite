Feature: Go through webpage
As a user
I want to look at website pages
So that I can see interesting things
  
  Scenario: User wants to see corporarte sponsors
    Given I am on root page
    When I go to corporarte sponsors page
    Then I should see all the sponsors
    
  Scenario: User wants to see advisory board
    Given I am on the root page
    When I go to advisory board page
    Then I should see the members
    
    Scenario: User wants to see Passenger FAQ
      Given I am on the root page!
      When I go to passengers page
      When I go to passenger faq
      Then I should see pass faq
      
    Scenario: User wants to see Pilot FAQ
      Given I am on the root page@
      When I go to pilot page
      When I go to pilot faq
      Then I should see pilot faq
      
    Scenario: User wants to see memorial wall
      Given I am on the root page%
      When I go to main donate page
      When I go to memorial wall
      Then I should see names
      
      

