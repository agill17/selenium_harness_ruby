Given(/^I click the "(.*?)" (radio|checkbox|button) "(.*?)"$/) do | ele,type,attr_type |
  element = Find_Element.by_id(Locators::Home_page["#{attr_type}"]["#{type}"]["#{ele}"], @driver)
  element.click
end

Given(/^I verify the "(.*?)" (radio|checkbox) "(.*?)" is (selected|not selected)$/) do |ele, type, attr_type, expected_action|
  expected = false
  if expected_action == "selected"
    expected = true
  end

  element = Find_Element.by_id(Locators::Home_page["#{attr_type}"]["#{type}"]["#{ele}"], @driver)
  if (expected != element.selected?)
    puts fail
  end
end
