Given(/^I am on the home page$/) do
  @driver.get 'https://letskodeit.teachable.com/p/practice'
end

When(/^I click bmw radio button$/) do
  bmw = Find_Element.by_id(Locators::Home_page['id']['bmw_radio'], @driver)
  bmw.click
end

Then(/^I print bwm radio button text$/) do

end
