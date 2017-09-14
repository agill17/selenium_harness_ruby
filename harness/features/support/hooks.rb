require 'selenium-webdriver'
require 'test-unit'


def get_tag (scenario)
  all_tags = scenario.tags.to_s
  scrubbed = all_tags.scan(/JIRA-\d+\w{2}\d+/).join(',')
end


Before do |scenario|
  puts "====================Starting before hook==========================="
  @driver = Selenium::WebDriver.for :chrome
  @driver.manage.window.maximize
  @driver.manage.delete_all_cookies
  @driver.manage.timeouts.implicit_wait = 4
  each_tag = get_tag(scenario)
  puts "=================Starting tag: #{each_tag}========================="
end


Before do |scenario|

end

After do |scenario|
  each_tag = get_tag(scenario)
  puts "====================Checkin #{each_tag} status====================="
  if (scenario.failed?)
   puts [scenario.scenario_outline.feature.name]
 else
   puts "PASSED: @#{each_tag} -- #{scenario.name}"
 end
  @driver.quit
  puts "===================Finished tag: #{each_tag}==========================="
end
