require 'selenium-webdriver'
Selenium::WebDriver::Chrome::Service.driver_path = "C:\\Users\\dines\\Selenium\\chromedriver_win32\\chromedriver.exe"
driver = Selenium::WebDriver.for :chrome
driver.manage.window.maximize

class Scroll_bar
    def opening_url(driver,url)
        driver.get(url)
        sleep(2)
    end

    def slider(driver)
      iframe =driver.find_element(:css,'iframe.lazyloaded')
      driver.switch_to.frame(iframe)
      slider = driver.find_element(:tag_name,'span')
      left = slider.send_keys(:arrow_left).to_i
      sleep(3)
      driver.quit()
    end
  end
  
  url = "https://www.globalsqa.com/demo-site/sliders/#Steps"
  obj = Scroll_bar.new()
  obj.opening_url(driver)
  obj.slider(driver)