Feature: Order product from website

  Scenario: Login the website
    When I go to website
    Then open the Login page
    And enter the username and password
    | ******|  *****  |
    And click the Login button

  Scenario: Search products on Product Search and go detail
    When I enter the keyword of product
     |  Keyword |Notebook Acer i7|
    And click the search button
   Then products should be shown on screen
