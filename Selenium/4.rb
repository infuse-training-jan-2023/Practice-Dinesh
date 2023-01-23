# 4. Write a script to select a checkbox, radio button.

require 'selenium-webdriver'
Selenium::WebDriver::Chrome::Service.driver_path = "C:\\Users\\dines\\Selenium\\chromedriver_win32\\chromedriver.exe"
driver = Selenium::WebDriver.for :chrome
driver.manage.window.maximize

class Four
    def que_four(driver)
        driver.get 'https://demo.automationtesting.in/Register.html'
        driver.find_element(:name,'radiooptions').click
        driver.find_element(:id,'checkbox1').click

        sleep(3)

        driver.quit()
    end
end

Four.new.que_four(driver)

