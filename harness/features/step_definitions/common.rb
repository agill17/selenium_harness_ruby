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
  if (!element.nil?)
    if (element.selected? != expected)
      fail("Expected element to be: #{expected}. Actual element was selected? #{element.selcted?}")
    end
  end
end
