require 'selenium-webdriver'
require 'test-unit'


def get_tag (scenario)
  all_tags = scenario.tags.to_s
  scrubbed = all_tags.scan(/JIRA-\d+\w{2}\d+/).join(',')
end


Before do |scenario|
  puts "====================Starting before hook==========================="
  @driver = Watir::Browser.new :chrome
  @driver.window.maximize
  @driver.manage.timeouts.implicit_wait = 5
  each_tag = get_tag(scenario)
  @driver.get 'https://letskodeit.teachable.com/p/practice'
  puts "=================Starting tag: #{each_tag}========================="
end


After do |scenario|
  each_tag = get_tag(scenario)
  puts "====================Checkin #{each_tag} status====================="
  if (scenario.failed?)
   # puts [scenario.feature.name]
 else
   puts "PASSED: @#{each_tag} -- #{scenario.name}"
 end
  @driver.close
  puts "===================Finished tag: #{each_tag}==========================="
end
