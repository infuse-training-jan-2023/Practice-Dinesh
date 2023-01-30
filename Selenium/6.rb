require 'selenium-webdriver'
Selenium::WebDriver::Chrome::Service.driver_path = "C:\\Users\\dines\\Selenium\\chromedriver_win32\\chromedriver.exe"
driver = Selenium::WebDriver.for :chrome
driver.manage.window.maximize

class Get_country_codes
    def getting_country_codes(driver)
        driver.get 'https://letcode.in/forms'

        options = driver.find_elements(:tag_name => "option")
        options.each do |opt|
            if(opt.text.include?"+")
                if()
                puts opt.text
                end
            end
        end
        driver.quit()
    end
end   

obj = Get_country_codes.new()
obj.getting_country_codes(driver)

