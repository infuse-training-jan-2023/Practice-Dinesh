require 'selenium-webdriver'
Selenium::WebDriver::Chrome::Service.driver_path = "C:\\Users\\dines\\Selenium\\chromedriver_win32\\chromedriver.exe"
driver = Selenium::WebDriver.for :chrome

driver.manage.window.maximize




class Que8
    def opening_url(driver)
        driver.get("https://www.globalsqa.com/demo-site/sliders/#Steps")
        sleep(2)
    end

    def slider(driver)
      iframe =driver.find_element(:css,'iframe.lazyloaded')
      driver.switch_to.frame(iframe)
      slider = driver.find_element(:tag_name,'span')
      driver.action.key_down(:control).perform
      driver.action.drag_and_drop_by(slider, 100,450).perform
      driver.quit()
    end
  end
  

  Que8.new.opening_url(driver)
  Que8.new.slider(driver)