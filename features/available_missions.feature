Feature: Available Missions
As a pilot
I want to view missions in a calendar
So that I can find missions on days that I am available
  
  Scenario: User sees the available missions
    Given I am on the homepage
    When I go to the available missions page
    Then I should see the calendar and list of missions
    Then I should see the add new mission feature