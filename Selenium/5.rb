require 'selenium-webdriver'
Selenium::WebDriver::Chrome::Service.driver_path = "C:\\Users\\dines\\Selenium\\chromedriver_win32\\chromedriver.exe"
driver = Selenium::WebDriver.for :chrome
driver.manage.window.maximize

class Five
    def que_five(driver)
        driver.get 'https://www.google.com'

        driver.find_element(:tag_name,'input').click
        driver.find_element(:tag_name,'input').send_keys('usemango', :return)
        sleep(5)

        driver.quit()
    end
end

Five.new.que_five(driver)
