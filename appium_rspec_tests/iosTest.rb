# This sample code uses the Appium ruby client
# gem install appium_lib
# Then you can paste this into a file and simply run with Ruby

require 'rubygems'
require 'appium_lib'

caps = {}
caps["platformName"] = "iOS"
caps["platformVersion"] = "11.4"
caps["deviceName"] = "iPhone X"
caps["app"] = "/Users/prakharrawat/Documents/login.app"
opts = {
    sauce_username: nil,
    server_url: "http://localhost:4723/wd/hub"
}
driver = Appium::Driver.new({caps: caps, appium_lib: opts}).start_driver

el2 = driver.find_element(:xpath, "//XCUIElementTypeApplication[@name=\"samplerLoginApplication\"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTextField")
el2.click
el3 = driver.find_element(:accessibility_id, "Login")
el3.click
el4 = driver.find_element(:xpath, "//XCUIElementTypeApplication[@name=\"samplerLoginApplication\"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther")
el4.click
TouchAction
  .new
  .press({x: 336, y: 132})
  .moveTo({x: 13, y: 129})
  .release
  .perform
    
TouchAction
  .new
  .press({x: 15, y: 166})
  .moveTo({x: 329, y: 168})
  .release
  .perform
    
TouchAction
  .new
  .press({x: 24, y: 122})
  .moveTo({x: 282, y: 142})
  .release
  .perform
    
TouchAction
  .new
  .press({x: 38, y: 65})
  .moveTo({x: 311, y: 68})
  .release
  .perform
    

driver.quit