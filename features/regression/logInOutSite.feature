Feature: login the web site
  Scenario: Go to website, enter the userName and password then login the web site
    When I go to website
    And click on Login button
    And Enter the userName and password
    |*|*|
    And Enter the login button
    Then I log in the website

  Scenario: logout from website
    When I click on Logout button
#    Then I log out from the website