require 'selenium-webdriver'
Selenium::WebDriver::Chrome::Service.driver_path = "C:\\Users\\dines\\Selenium\\chromedriver_win32\\chromedriver.exe"

driver = Selenium::WebDriver.for :chrome

class Table_headers
    def getting_table_headers(driver)
        driver.get("https://cosmocode.io/automation-practice-webtable/")

        tableheader = driver.find_elements(:tag_name => 'tr')[0]
        puts tableheader.text

        sleep(2)
        driver.quit()
    end
end
obj = Table_headers.new()
obj.getting_table_headers(driver)

