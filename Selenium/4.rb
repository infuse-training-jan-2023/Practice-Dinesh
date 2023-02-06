# 4. Write a script to select a checkbox, radio button.

require 'selenium-webdriver'
Selenium::WebDriver::Chrome::Service.driver_path = "C:\\Users\\dines\\Selenium\\chromedriver_win32\\chromedriver.exe"
driver = Selenium::WebDriver.for :chrome
driver.manage.window.maximize

class Check_box_radio_btn
    def selecting_check_box_radio_btn(driver,url)
        driver.get(url)
        driver.find_elements(:name,'radiooptions')[0].click
        driver.find_elements(:id,'checkbox1')[0].click
        driver.quit()
    end
end

url = 'https://demo.automationtesting.in/Register.html'
obj = Check_box_radio_btn.new()
obj.selecting_check_box_radio_btn(driver,url)

