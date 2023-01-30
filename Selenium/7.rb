# 7. Write a script to select the i-th dropdown item and return the value. 
require 'selenium-webdriver'
Selenium::WebDriver::Chrome::Service.driver_path = "C:\\Users\\dines\\Selenium\\chromedriver_win32\\chromedriver.exe"
driver = Selenium::WebDriver.for :chrome
driver.manage.window.maximize

class Get_opotion_list
    def getting_options_list(driver)
        driver.get 'https://letcode.in/forms'
        options = driver.find_element(:tag_name => "select")
        sel = options.find_elements(:tag_name => "option")
        sel[5].click
    end
end

obj = Get_country_codes.new()
obj.getting_options_list(driver)
