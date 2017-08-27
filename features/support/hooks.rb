require 'selenium-webdriver'

Before do
  puts "======Starting before hook====="
  @driver = Selenium::WebDriver.for :chrome
  @driver.manage.window.maximize
  @driver.manage.delete_all_cookies
  @driver.driver.manage.timeouts.implicit_wait = 4
end

After do |scenario|
  puts "======Starting after hook====="
  puts "======Checkin scenario status======"
  if (scenario.failed?)
   puts [scenario.scenario_outline.feature.name]
  end
  @driver.quit
end
