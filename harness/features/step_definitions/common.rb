Given(/^I click the "(.*?)" (radio|checkbox|button) "(.*?)"$/) do | ele,type,attr_type |
  element = nil
  case attr_type
  when "id"
    element = Find_Element.by_id(Locators::Home_page["id"]["#{type}"]["#{ele}"], @driver)
  when "class"
    element = Find_Element.by_class(Locators::Home_page["class"]["type"]["ele"], @driver)
  when "text"
    element = Find_Element.by_text(Locators::Home_page["text"]["type"]["ele"], @driver)
  when "name" 
    element = Find_Element.by_name(Locators::Home_page["name"]["type"]["ele"], @driver)
  end
  element.click
end

Given(/^I verify the "(.*?)" (radio|checkbox) "(.*?)" is (selected|not selected)$/) do |ele, type, attr_type, expected_action|
  expected = false
  if expected_action == "selected"
    expected = true
  end

  element = nil
  case attr_type
  when "id"
    element = Find_Element.by_id(Locators::Home_page["id"]["#{type}"]["#{ele}"], @driver)
  when "class"
    element = Find_Element.by_class(Locators::Home_page["class"]["type"]["ele"], @driver)
  when "text"
    element = Find_Element.by_text(Locators::Home_page["text"]["type"]["ele"], @driver)
  when "name" 
    element = Find_Element.by_name(Locators::Home_page["name"]["type"]["ele"], @driver)
  end  

  if (expected != element.selected?)
    puts fail
  end
end
