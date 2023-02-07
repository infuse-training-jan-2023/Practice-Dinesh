require 'selenium-webdriver'
Selenium::WebDriver::Chrome::Service.driver_path = "C:\\Users\\dines\\Selenium\\chromedriver_win32\\chromedriver.exe"
driver = Selenium::WebDriver.for :chrome
driver.manage.window.maximize

class Send_keys
    def sending_keys(driver,url)
        driver.get(url)
        element = driver.find_element(:tag_name,'input').click
        element.send_keys('usemango', :return)
        sleep(5)

        driver.quit()
    end
end

url = 'https://www.google.com'
obj = Send_keys.new()
obj.sending_keys(driver,url)
