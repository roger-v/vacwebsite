Feature: Registration Forms
As a pilot
I want to see registration form
So that I can submit it

  Scenario: User submits form
    Given at homepage
    When I go to pilots and planes
    When I go to pilot application
    Then I should see submit form button