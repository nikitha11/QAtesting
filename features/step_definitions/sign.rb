Given("I am on Event Scheduler home page") do
 @browser.navigate.to "http://eventscheduling.herokuapp.com/"
end

When("I signup with valid details") do
  sleep 2
  @browser.find_element(xpath: ".//*[@value='Sign up']").displayed?
  sleep 2
  @browser.find_element(xpath: ".//*[@value='Sign up']").click
  sleep 2
  @browser.find_element(xpath: '//div[2]/div/div/h4').displayed?
  sleep 2
  @browser.find_element(id: 'signup_name').send_keys "nikitha"
  sleep 2
  @browser.find_element(id: 'user_email').send_keys "varsha@gmail.com"
  sleep 2
  @browser.find_element(id: 'signup_password').send_keys "9591901771"
  sleep 2
  @browser.find_element(id: 'signup_confirm_password').send_keys "9591901771"
  sleep 2
  @browser.find_element(id: 'signup_button').click
end


Then("I should see {string} message") do |var|
  sleep 2
  var1=@browser.find_element(xpath: ".//*[@id='div_flash_container']/p").text
  if var1==var
   puts "#{var1}"
 else
   raise.Expection.new "#{var1} not found"
 end
end

Given("I am on  dashbroad page") do
  sleep 2
  @browser.find_element(xpath: ".//*[@value='Create New Event']").displayed?
end

When("I click on signout button") do
  sleep 2
  @browser.find_element(xpath: ".//*[@value='Sign Out']").click
end

Then("I should see {string}") do |varr|
  sleep 2
  var11=@browser.find_element(xpath: ".//*[@id='div_flash_container']/p").text
  if var11==varr
   puts "#{var11}"
 else
   raise.Expection.new "#{var11} not found"
 end
end
