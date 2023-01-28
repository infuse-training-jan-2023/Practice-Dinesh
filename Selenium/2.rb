require 'selenium-webdriver'
Selenium::WebDriver::Chrome::Service.driver_path = "C:\\Users\\dines\\Selenium\\chromedriver_win32\\chromedriver.exe"
driver = Selenium::WebDriver.for :chrome
# 2. Write a script to navigate to a website and get its title.
driver.manage.window.maximize
url = "https://www.youtube.com"

class Two
    def que_two(url,driver)
        driver.get url
        title = driver.title
        puts "page title is #{title}"
        driver.quit()
    end
end

two = Two.new()
two.que_two(url,driver)

