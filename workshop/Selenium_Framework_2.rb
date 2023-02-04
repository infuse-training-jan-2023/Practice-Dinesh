require 'selenium-webdriver'

path = "C:\\Users\\dines\\Selenium\\chromedriver_win32\\chromedriver.exe"
Selenium::WebDriver::Chrome::Service.driver_path = path

class Framework

   def initialize
      # Selenium::WebDriver::Chrome.driver_path = "/opt/chromedriver-109.0.5414.74/chromedriver"
      # options = Selenium::WebDriver::Chrome::Options.new
      # options.add_argument("--headless")
      # options.add_argument("--no-sandbox")
      # options.add_argument("--window-size=1920,1080")
      # options.add_argument("--disable-gpu")
      # options.add_argument("--disable-dev-shm-usage")
      # @driver = Selenium::WebDriver.for :chrome, options: options
      @driver = Selenium::WebDriver.for :chrome
   end

     def open_site_and_maximize(url)
        @driver.get(url) 
        @driver.manage.window.maximize
        return "site opened and maximized"
     end

     def wait_for(time)
         sleep(time)
     end

     def click_element(element)
        element.click
     end

     def get_element(key,parent = @driver)
         begin
            element = parent.find_element(key)
            return element 
         rescue => e
            return "error: #{e}"
         end
      end

      def get_elements(key,parent = @driver)
         begin
            element = parent.find_elements(key)
            return element 
         rescue => e
            return "error: #{e}"
         end
      end

     def send_data(data,parent = @driver)
         begin
            parent.send_keys(data) 
         rescue => e
            return "error: #{e}"
         end   
     end

     def get_title(parent=@driver)
         begin
            return parent.title
         rescue => e
            return "error: #{e}"
         end 
     end

    def switch_tab(parent=@driver)
      original_window = parent.window_handle
      parent.window_handles.each do |handle|
        if handle != original_window
            parent.switch_to.window handle
            break
        end
      end      
    end

   def quit_browser(parent=@driver)
      parent.quit()
   end

end

