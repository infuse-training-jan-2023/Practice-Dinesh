require 'selenium-webdriver'

# path = "C:\\Users\\dines\\Selenium\\chromedriver_win32\\chromedriver.exe"
# Selenium::WebDriver::Chrome::Service.driver_path = path

class Framework

   def initialize
      Selenium::WebDriver::Chrome.driver_path = "/opt/chromedriver-109.0.5414.74/chromedriver"
      options = Selenium::WebDriver::Chrome::Options.new
      options.add_argument("--headless")
      options.add_argument("--no-sandbox")
      options.add_argument("--window-size=1920,1080")
      options.add_argument("--disable-gpu")
      options.add_argument("--disable-dev-shm-usage")
      @driver = Selenium::WebDriver.for :chrome, options: options
      # @driver = Selenium::WebDriver.for :chrome
   end

     def opening_site_and_maximizing(url)
        @driver.get(url) 
        @driver.manage.window.maximize
        return "site opened and maximized"
     end

     def wait_for(time)
         sleep(time)
     end


     def clicking_element(element)
        element.click
     end


     def get_element_by_id(id,parent = @driver)
         begin
            element = parent.find_element(:id => id)
            return element
         rescue
            return "element not found"
         end
     end
     

     def get_element_by_class(class_val,parent = @driver)
         begin
            parent.find_element(:class => class_val)
         rescue
            return "element not found"
         end
     end


    def get_elements_by_class(class_val,parent = @driver)
         elements =  parent.find_elements(:class => class_val)
         begin
            if(elements.length==0)
               raise "This is an exception"
            else
               return elements
            end

         rescue
            return 'Error'
         end
    end


    def get_element_by_tag_name(tag_name,parent = @driver)
         begin
            parent.find_element(:tag_name => tag_name)
         rescue
            return "element not found"
         end
    end

    def get_elements_by_tag_name(tag_name,parent = @driver)
         elements =  parent.find_elements(:tag_name, tag_name)
         begin
            if(elements.length==0)
               raise "This is an exception"
            else
               return elements
            end

         rescue
            return 'Error'
         end
    end


     def sending_data(data,parent = @driver)
         begin
            parent.send_keys(data) 
         rescue
            return "element not found"
         end    
     end


     def get_title(parent=@driver)
         begin
            return parent.title
         rescue
            return "element not found"
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

    def get_element_by_xpath(xpath,parent=@driver)
         begin
            return parent.find_element(:xpath => xpath)
         rescue
            return "element not found"
         end
   end

   def quit_browser(parent=@driver)
      parent.quit()
   end

end

