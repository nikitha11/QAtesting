@User_signin_and_logout
Feature: As a End-User
I should be able to signup to create a new user and logout successfully from the application

@sign_up
Scenario:signup with valid credentials
Given I am on Event Scheduler home page
When I signup with valid details 
Then I should see "Signed up!" message

@logout
Scenario:logout from the application
Given I am on  dashbroad page
When I click on signout button
Then I should see "Logged out!"

