Feature: Donate
As a donor
I want to see donate form
So that I can fill and submit
  
  Scenario: User sees donate form
    Given on homepage
    When I go to the donate page
    When I click donate now button
    Then I should see the donate form

