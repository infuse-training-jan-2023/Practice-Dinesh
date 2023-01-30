require 'selenium-webdriver'
Selenium::WebDriver::Chrome::Service.driver_path = "C:\\Users\\dines\\Selenium\\chromedriver_win32\\chromedriver.exe"
driver = Selenium::WebDriver.for :chrome
driver.get("https://computer-database.gatling.io/computers")
url = "https://computer-database.gatling.io/computers"

class Table_column
    def getting_table_column(driver,url)
        driver.get(url)
        tbody = driver.find_element(:tag_name => 'tbody')

        tr = tbody.find_elements(:tag_name => 'tr')
        puts tr.count

        tr.each do |i|
            td = tr[i].find_element(:tag_name => 'td')
            a = td.find_element(:tag_name => 'a').text
            puts a
        end

        sleep(2)
        driver.quit()
    end
end

obj = Table_column.new()
obj.getting_table_column(driver,url)