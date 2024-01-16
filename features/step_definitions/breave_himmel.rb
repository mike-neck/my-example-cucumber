require 'selenium-webdriver'

Given('he was on a hill near a city destroyed by the attack') do
  @driver = Selenium::WebDriver.for :chrome
  @driver.get 'https://www.google.jp'
end

When('he headed to the top of the hill') do
  element = @driver.find_element(name: 'q')
  element.send_keys 'ハイター 勇者ヒンメルならそうしました'
  element.submit
end

Then('A little girl was standing alone on the hill') do
  wait = Selenium::WebDriver::Wait.new(timeout: 10)
  wait.until { @driver.title.start_with? 'ハイター 勇者ヒンメルなら' }
  expect(@driver.title).to end_with("Google 検索")
  @driver.close
end