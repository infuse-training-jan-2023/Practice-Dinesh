require 'selenium-webdriver'
Selenium::WebDriver::Chrome::Service.driver_path = "C:\\Users\\dines\\Selenium\\chromedriver_win32\\chromedriver.exe"
driver = Selenium::WebDriver.for :chrome

class One
    def que_one(driver)
        driver.manage.window.maximize
        sleep(5)
        driver.quit()
    end 
end

question_one = One.new()

question_one.que_one(driver)


