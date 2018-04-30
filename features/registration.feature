@Eventshcheduler
Feature: As a End-User
I should able to able to  sign-in and log-out successfully

@homepage
Scenario:
Given I am on Event Scheduler home page
When I click on sign up button
Then I should be able to see pop-up menu

@sign-in
Scenario:
Given I am Event scheduler home page
When I enter name email password
Then I should be able to sign-in successfully

@sign-out
Scenario:
Given I am in home page 
When I click on sign-out button
Then It should sign-out successfully

@log-in
 Scenario:
 Given I am in home page of
 When I click on log-in button 
 Then I should able to see a pop-up menu

@login
Scenario:
Given I am login pop-up
When I enter email and password
Then I should be able to login successfully

@logout
Scenario:
Given I am hm page
When I click on signout button
Then I should be able to logout successfully
