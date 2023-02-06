# require 'selenium-webdriver'
require_relative "driverfile"

class Framework

   def initialize(driver_new)
      @driver = driver_new
      # @driver = SeleniumWebDriver.new.create_driver()
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

