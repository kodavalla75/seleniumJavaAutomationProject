Feature: Login functionality

  As a registered user
  I want to login into the application
  So that I can access my account

 
  Scenario: Successful login with valid credentials
    Given user navigates to the login page
    When user enters username "qatrainer" and password "admin123"
    And user clicks on the login button
 #   Then user should be redirected to the home page
 #   And the welcome message should be displayed

  
  
@regression @login
  Scenario Outline: Unsuccessful login with invalid credentials
    Given user navigates to the login page
    When user enters username "<username>" and password "<password>"
    And user clicks on the login button
    Then an error message should be displayed

    Examples:
      | username   | password   |
      | wrongUser  | admin123   |
      | qatrainer  | wrongPass  |
      | invalid    | invalid    |