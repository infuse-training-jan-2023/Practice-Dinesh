require 'selenium-webdriver'

class Twelve

    attr_accessor :driver
    def initialize
        Selenium::WebDriver::Chrome::Service.driver_path = "C:\\Users\\dines\\Selenium\\chromedriver_win32\\chromedriver.exe"
        @driver = Selenium::WebDriver.for :chrome
    end

    def open_website_get_title(url)
        driver.get(url)
        puts driver.title
        driver.manage.window.maximize
        sleep(2)
    end

    def send_text_to_searchbar()
        searchbar = driver.find_element(:id => 'search')
        sending_text = driver.find_element(:id => 'search').send_keys('pants', :return)
        sleep(3)
    end

    def click_img()
        driver.find_element(:class => "product-image-container").click
        sleep(2)
    end

    def get_price_and_name()
        name = driver.find_element(:class => "base").text
        price = driver.find_element(:class => "price").text
        puts name
        puts price
        sleep(2)
    end

    def order_by_checking_price()
        price = driver.find_element(:class => "price").text
        if (price == '$35.00')
            driver.find_element(:id => "option-label-size-143-item-175").click
            driver.find_element(:id => "option-label-color-93-item-49").click
            sleep(2)
            driver.find_element(:id => 'product-addtocart-button').click
            sleep(2)
        else
            driver.exit()
        end
    end

    def go_to_cart()
        driver.find_element(:class => "minicart-wrapper").click
        sleep(3)
    end

end


url = "https://magento.softwaretestingboard.com/"

twlv = Twelve.new()

twlv.open_website_get_title(url)
twlv.send_text_to_searchbar()
twlv.click_img()
twlv.get_price_and_name()
twlv.order_by_checking_price()
twlv.go_to_cart()


