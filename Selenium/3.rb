# 3. Write a script to click a button.

require 'selenium-webdriver'
Selenium::WebDriver::Chrome::Service.driver_path = "C:\\Users\\dines\\Selenium\\chromedriver_win32\\chromedriver.exe"
driver = Selenium::WebDriver.for :chrome
driver.manage.window.maximize

class Three
    def que_three(driver)
        driver.get "https://practise.usemango.co.uk/"

        driver.find_element(:id,'about').click

        sleep(3)

        puts "button clicked"

        driver.quit()
    end
end

Three.new.que_three(driver)

