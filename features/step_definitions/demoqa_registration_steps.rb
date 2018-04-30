Given("I am on Event Scheduler home page") do
  
   @browser.navigate.to "http://eventscheduling.herokuapp.com/"
end

When("I click on sign up button") do
  sleep 3
  @browser.find_element(xpath: '//div[2]/ul/li[1]/form/input').click 
end

Then("I should be able to see pop-up menu") do
  sleep 3
   @browser.find_element(xpath: '//div[2]/div/div/h4').displayed?
end

Given("I am Event scheduler home page") do
  sleep 2
   @browser.find_element(xpath: '//div[2]/div/div/h4').displayed?
end

When("I enter name email password") do
  sleep 2
  @browser.find_element(id: 'signup_name').send_keys "nikitha"
    sleep 2
    @browser.find_element(id: 'user_email').send_keys "deep@gmail.com"
    sleep 2
    @browser.find_element(id: 'signup_password').send_keys "9591901771"
    sleep 2
    @browser.find_element(id: 'signup_confirm_password').send_keys "9591901771"
    sleep 2
end

Then("I should be able to sign-in successfully") do
  sleep 2
   @browser.find_element(id: 'signup_button').click
end


Given("I am in home page") do
    sleep 3
    @browser.find_element(xpath: ".//*[@value='Create New Event']").displayed?
end

When("I click on sign-out button") do
  sleep 3
   @browser.find_element(xpath: ".//*[@value='Sign Out']").click
end

Then("It should sign-out successfully") do
  sleep 3
  @browser.find_element(xpath: '//div[2]/ul/li[1]/form/input').displayed?
end

Given("I am in home page of") do
  sleep 3
   @browser.find_element(xpath: '//div[2]/ul/li[1]/form/input').displayed?
end


When("I click on log-in button") do
  sleep 3
  @browser.find_element(xpath: ".//*[@value='Log In']").click
end

Then("I should able to see a pop-up menu") do
  sleep 3
 @browser.find_element(id: 'inputEmail').displayed?
end



Given("I am login pop-up") do
  sleep 2
   @browser.find_element(id: 'inputEmail').displayed?
end

When("I enter email and password") do
  sleep 2
   @browser.find_element(id: 'inputEmail').send_keys "n@gmail.com"
  @browser.find_element(id: 'inputPassword').send_keys "9591901771"
 end   

Then("I should be able to login successfully") do
  sleep 2
  @browser.find_element(id: 'signup_button').click   
end



Given("I am hm page") do
  sleep 2
 @browser.find_element(xpath: ".//*[@value='Create New Event']").displayed?
end

When("I click on signout button") do
   sleep 3
   @browser.find_element(xpath: ".//*[@value='Sign Out']").click
end

Then("I should be able to logout successfully") do
  sleep
 @browser.find_element(xpath: '//div[2]/div/div/h4').displayed?
end



























