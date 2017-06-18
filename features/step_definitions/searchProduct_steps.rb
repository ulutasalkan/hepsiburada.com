When(/^I enter the keyword of product$/) do |info|
  # table is a table.hashes.keys # => [:Notebook Acer i7]
  find_by_id("productSearch").set info.raw[0][1]
end

And(/^click the search button$/) do
  find_by_id("buttonProductSearch").click
  sleep 5
end

Then(/^products should be shown on screen$/) do
  find("search-results-title")
end