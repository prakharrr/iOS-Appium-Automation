
require 'rubygems'
require 'appium_lib'
require 'sauce_whisk'

desired_caps = {
  caps: {
    platformName:  'iOS',
    platformVersion: '11.1',
    deviceName:    'iPhone X',
    automationName: 'XCUITest',
    udid: 'D30DF733-9D7E-47C7-BAC3-F947F2F1B82E',
    bundleId: 'sampleTestSauceApp.samplerLoginApplication',
  },
  appium_lib: {
    sauce_username:   nil, # don't run on Sauce
    sauce_access_key: nil,
    wait: 60
  }
}

# driver config for testing on sauce cloud emu or sim and/or RDC 
#driver = Selenium::WebDriver.for(:remote,
    #:url => "https://YOUR_SAUCE_USERNAME:YOUR_SAUCE_ACCESS_KEY@ondemand.saucelabs.com:443/wd/hub",
    #:desired_capabilities => caps)

driver = Appium::Driver.new(desired_caps)
driver.start_driver

# describe "Click and Enter Username and Password Text Fields and Touch Login Button" do
#   it "look for username field first" do

# log ("Test 1: Testing for writing in text fields named as Username")
# driver.find_element(:name, "usernameField").send_keys("genericUsername\n")

# log("Test 2: Testing for password type field")
# driver.find_element(:name, "pwField").send_keys("genericPassword")


# log("Test 3: Testing for login click action")
# driver.find_element(:name, "Login").send_keys(return)

#   end
# end

driver.find_exact('Login').click


alerting_text = alert.text
raise Exception unless alerting_text.include? 'This is totally Random Alert Text'
alert_accept

# tests here


driver.driver_quit