When(/^I go to website$/) do
  visit("http://www.hepsiburada.com")
end

Then(/^open the Login page$/) do
  find_by_id("myAccount").click
  find_by_id("login").click
end

And(/^enter the username and password$/) do |info|
  find_by_id("email").set info.raw[0][0]
  find_by_id("password").set info.raw[0][1]
end

And(/^click the Login button$/) do
  find("button.btn-login-submit").click
end
