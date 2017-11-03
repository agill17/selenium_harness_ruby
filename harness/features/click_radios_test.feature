Feature: Test Feature

@JIRA-73DA89
Scenario: Click all radio buttons
  Given I am on the home page
  When I click the "bmw" "div"
  And I verify the "bmw" radio "id" is selected
  When I click the "benz" "div"
  And I verify the "benz" radio "id" is selected
  And I verify the "bmw" radio "id" is not selected
  And I verify the "benz" radio "id" is selected
  And I verify the "honda" radio "id" is not selected
  And I verify the "honda" checkbox "id" is not selected
  And I verify the "open_window" button "id" is displayed
  Then I print bwm radio button text

@JIRA-73HA80
Scenario: Click all radio buttons
  Given I am on the home page
  When I click the "bmw" "div"
  And I verify the "bmw" radio "id" is selected
  When I click the "benz" "div"
  And I verify the "benz" radio "id" is selected
  And I verify the "bmw" radio "id" is not selected
  And I verify the "benz" radio "id" is selected
  And I verify the "honda" radio "id" is not selected
  And I verify the "honda" checkbox "id" is not selected
  Then I verify the "open_window" button "id" is displayed
  Then I print bwm radio button text
