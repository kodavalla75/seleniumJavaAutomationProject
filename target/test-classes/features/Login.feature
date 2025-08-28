Feature: Login functionality

  As a registered user
  I want to login into the application
  So that I can access my account

 
  Scenario: Successful login with valid credentials
    Given user navigates to the login page
    When user enters username "qatrainer" and password "admin123"
    And user clicks on the login button
   Then user should be redirected to the home page
   And the welcome message should be displayed

  
  
 Scenario: Successful login with Invalid credentials
    Given user navigates to the login page
    When user enters username "qatrainer" and password "admin"
    And user clicks on the login button
   Then user should be redirected to the home page
   And the welcome message should be displayed