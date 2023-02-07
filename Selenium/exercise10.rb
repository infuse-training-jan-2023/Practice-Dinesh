require 'selenium-webdriver'
Selenium::WebDriver::Chrome::Service.driver_path = "C:\\Users\\dines\\Selenium\\chromedriver_win32\\chromedriver.exe"
driver = Selenium::WebDriver.for :chrome

class Table_column
    def getting_table_column(driver,url)
        driver.get(url)
        trs = driver.find_elements(:tag_name, "tr")
        trs.each do |tr|
            puts tr.text 
        end
        driver.quit()
    end
end

url = "https://computer-database.gatling.io/computers"
obj = Table_column.new()
obj.getting_table_column(driver,url)