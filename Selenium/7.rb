# 7. Write a script to select the i-th dropdown item and return the value. 
require 'selenium-webdriver'
Selenium::WebDriver::Chrome::Service.driver_path = "C:\\Users\\dines\\Selenium\\chromedriver_win32\\chromedriver.exe"
driver = Selenium::WebDriver.for :chrome
driver.manage.window.maximize

class Seven
    def que_seven(driver)
        driver.get 'https://letcode.in/forms'

        options = driver.find_element(:tag_name => "select")

        sel = options.find_elements(:tag_name => "option")

        sel[5].click

        sleep(2)
    end
end

Seven.new.que_seven(driver)
