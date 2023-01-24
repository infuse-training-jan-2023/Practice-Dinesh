require 'selenium-webdriver'
Selenium::WebDriver::Chrome::Service.driver_path = "C:\\Users\\dines\\Selenium\\chromedriver_win32\\chromedriver.exe"

driver = Selenium::WebDriver.for :chrome
url = "https://www.lenskart.com"


class Workshop
     def opening_site(driver,url)
        driver.get(url)
        puts driver.manage.window.size
        sleep(2)
     end
end

Workshop.new.opening_site(driver,url)