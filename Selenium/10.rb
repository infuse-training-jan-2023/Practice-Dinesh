require 'selenium-webdriver'
Selenium::WebDriver::Chrome::Service.driver_path = "C:\\Users\\dines\\Selenium\\chromedriver_win32\\chromedriver.exe"
driver = Selenium::WebDriver.for :chrome

class Table_column
    def getting_table_column(driver,url)
        driver.get(url)
        tbody = driver.find_element(:tag_name => 'tbody')
        tr = tbody.find_elements(:tag_name => 'tr')
        td = tr[0].find_element(:tag_name => 'td')
        text = td.find_element(:tag_name => 'a').text
        puts text
        sleep(2)
        driver.quit()
    end
end

url = "https://computer-database.gatling.io/computers"
obj = Table_column.new()
obj.getting_table_column(driver,url)