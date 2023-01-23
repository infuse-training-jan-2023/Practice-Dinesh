require 'selenium-webdriver'
Selenium::WebDriver::Chrome::Service.driver_path = "C:\\Users\\dines\\Selenium\\chromedriver_win32\\chromedriver.exe"
driver = Selenium::WebDriver.for :chrome
# 2. Write a script to navigate to a website and get its title.
driver.manage.window.maximize

class Two
    def que_two
        driver.get "https://www.youtube.com"
        title = driver.title
        puts "page title is #{title}"
        driver.quit()
    end
end

Two.new.que_two(driver)

