# 3. Write a script to click a button.

require 'selenium-webdriver'
Selenium::WebDriver::Chrome::Service.driver_path = "C:\\Users\\dines\\Selenium\\chromedriver_win32\\chromedriver.exe"
driver = Selenium::WebDriver.for :chrome
driver.manage.window.maximize

class Click_button
    def clicking_button(driver)
        driver.get "https://practise.usemango.co.uk/"
        driver.find_element(:id,'about').click
        driver.quit()
    end
end

obj = Click_button.new()
obj.clicking_button(driver)

