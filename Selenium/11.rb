require 'selenium-webdriver'
Selenium::WebDriver::Chrome::Service.driver_path = "C:\\Users\\dines\\Selenium\\chromedriver_win32\\chromedriver.exe"
driver = Selenium::WebDriver.for :chrome


class Get_cell
    def getting_a_cell(driver,url)
        driver.get(url)
        tbody = driver.find_element(:tag_name => 'tbody')
        tr = tbody.find_elements(:tag_name => 'tr')
        td = tr[2].find_elements(:tag_name => 'td')
        a = td[2].text
        puts a

        sleep(2)
        driver.quit()
    end
end

url = "https://the-internet.herokuapp.com/tables"
obj = Get_cell.new()
obj.getting_a_cell(driver,url)