require 'selenium-webdriver'
Selenium::WebDriver::Chrome::Service.driver_path = "C:\\Users\\dines\\Selenium\\chromedriver_win32\\chromedriver.exe"
driver = Selenium::WebDriver.for :chrome
driver.manage.window.maximize
url = "https://magento.softwaretestingboard.com/"


class Twelve


    def opening_website_getting_title(driver,url)
        driver.get(url)
        puts driver.title
        # sleep(2)
    end

    def sending_text_to_searchbar(driver)
        searchbar = driver.find_element(:id => 'search').click
        sending_text = driver.find_element(:id => 'search').send_keys('pants', :return)
        # sleep(5)
    end

    def sorting(driver)
        sort = driver.find_element(:id => 'sorter').click
        sleep(2)
        sorted = sort.find_element(:xpath => '//*[@id="sorter"]/option[1]').click
        # sleep(2)
        
    end

    def clicking_img(driver)
        driver.find_element(:class => "product-image-container").click
        # sleep(2)
    end

    def getting_price_and_name(driver)
        name = driver.find_element(:class => "base").text
        price = driver.find_element(:class => "price").text
        puts name
        puts price
        sleep(2)
    end

    def ordering_by_checking_price(driver)
        price = driver.find_element(:class => "price").text
        if (price == '$35.00')
            driver.find_element(:id => "option-label-size-143-item-175").click
            driver.find_element(:id => "option-label-color-93-item-49").click
            driver.find_element(:id => 'product-addtocart-button').click
            # sleep(2)
        else
            driver.exit()
        end
    end

    def going_to_cart(driver)
        driver.find_element(:class => "minicart-wrapper").click
        sleep(8)
        driver.exit()
    end

end

twlv = Twelve.new()

twlv.opening_website_getting_title(driver,url)
twlv.sending_text_to_searchbar(driver)
# twlv.sorting(driver)
twlv.clicking_img(driver)
twlv.getting_price_and_name(driver)

twlv.ordering_by_checking_price(driver)

twlv.going_to_cart(driver)


