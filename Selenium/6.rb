require 'selenium-webdriver'
Selenium::WebDriver::Chrome::Service.driver_path = "C:\\Users\\dines\\Selenium\\chromedriver_win32\\chromedriver.exe"
driver = Selenium::WebDriver.for :chrome
driver.manage.window.maximize

class Get_country_codes
    def getting_country_codes(driver)
        driver.get 'https://letcode.in/forms'

        country_name_element = driver.find_elements(:tag_name, 'select')[1]
        country_name = country_name_element.find_elements(:tag_name, 'option')
        country_name.each do|e|
            puts e.text
        end
        driver.quit()
    end
end   

obj = Get_country_codes.new()
obj.getting_country_codes(driver)

