require 'selenium-webdriver'

Given('he was on a hill near a city destroyed by the attack') do
  options = Selenium::WebDriver::Chrome::Options.new
  options.add_argument('--headless')
  options.add_argument('--no-sandbox')
  options.add_argument('--disable-dev-shm-usage')

  @driver = Selenium::WebDriver.for :chrome, options: options
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
  keyword = "Google 検索"
  keyword = "Google Search" if ENV["GITHUB_ACTIONS"] == true
  expect(@driver.title).to end_with(keyword),
                           "actual: #{@driver.title} expected: #{keyword}, params: #{ENV['GITHUB_ACTIONS']}"
  @driver.close
end
