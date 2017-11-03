Given(/^I (click|double click) the "(.*?)" "(.*?)"$/) do |action, ele, tag|
  element = Find_Element.get_element(ele, tag, @driver)
  
  if (!element.nil?) 
    element.method(action).call
  end

end


Given(/^I verify the "(.*?)" (radio|checkbox) "(.*?)" is (selected|not selected)$/) do |ele, tag, expected_action|
  
  expected = false
  if expected_action == "selected"
    expected = true
  end

  element = Find_Element.get_element(ele, tag, @driver)
  Element_verify.selected(element, expected)

end

Given(/^I click the (back|forward) browser button$/) do |which_btn|
    @driver.method(which_btn).call
end

