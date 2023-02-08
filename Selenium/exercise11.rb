require 'selenium-webdriver'
Selenium::WebDriver::Chrome::Service.driver_path = "C:\\Users\\dines\\Selenium\\chromedriver_win32\\chromedriver.exe"
driver = Selenium::WebDriver.for :chrome


class Get_cell
    def getting_a_cell(driver,url,n)
        driver.get(url)

        td = driver.find_elements(:tag_name => 'td')
        a = td[2].text
        puts a

        driver.quit()
    end
end

url = "https://the-internet.herokuapp.com/tables"
obj = Get_cell.new()
obj.getting_a_cell(driver,url,3)