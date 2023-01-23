require 'selenium-webdriver'
Selenium::WebDriver::Chrome::Service.driver_path = "C:\\Users\\dines\\Selenium\\chromedriver_win32\\chromedriver.exe"

driver = Selenium::WebDriver.for :chrome
url = "https://the-internet.herokuapp.com/tables"

class Que_eleven
    def q11(driver,url)
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

Que_eleven.new.q11(driver,url)