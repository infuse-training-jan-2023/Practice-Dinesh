# 3. Write a script to click a button.

require 'selenium-webdriver'
Selenium::WebDriver::Chrome::Service.driver_path = "C:\\Users\\dines\\Selenium\\chromedriver_win32\\chromedriver.exe"
driver = Selenium::WebDriver.for :chrome
driver.manage.window.maximize

class Click_button
    def clicking_button(driver,url)
        driver.get(url)
        driver.find_element(:id,'about').click
        driver.quit()
    end
end

url = "https://practise.usemango.co.uk/"
obj = Click_button.new()
obj.clicking_button(driver,url)

