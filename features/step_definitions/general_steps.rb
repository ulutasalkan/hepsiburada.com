When(/^I go to website$/) do
  visit("http://www.hepsiburada.com")
  page.driver.browser.manage.window.maximize
end


And(/^click on Login button$/) do
  find_by_id("myAccount").click
  find_by_id("login").click
end

And(/^Enter the userName and password$/) do |table|
  find_by_id("email").click
  find_by_id("email").set table.raw[0][0]
  find_by_id("password").click
  find_by_id("password").set table.raw[0][1]
  sleep 3
end

And(/^Enter the login button$/) do
  find("button.btn-login-submit").click
end

Then(/^I log in the website$/) do
  expect(find("div.usersProsess").find("a.user-name").text).to eq "Alkan Ulutaş"
end

When(/^I click on Logout button$/) do
  find_by_id("myAccount").click
  find("a.logout").click
end