require 'selenium-webdriver'
Selenium::WebDriver::Chrome::Service.driver_path = "C:\\Users\\dines\\Selenium\\chromedriver_win32\\chromedriver.exe"

driver = Selenium::WebDriver.for :chrome

driver.get("https://computer-database.gatling.io/computers")

url = "https://computer-database.gatling.io/computers"

class Que_ten
    def q10(driver,url)
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

Que_ten.new.q10(driver,url)