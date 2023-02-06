require 'test/unit'
require_relative "Selenium_Framework_2"
require_relative "driverfile"

class Test_framework < Test::Unit::TestCase

    attr_accessor :framework, :driver, :url
    def setup
        @driver=SeleniumWebDriver.new.create_driver()
        @framework = Framework.new(@driver)
        # @url = "file:///app/index.html"
        @url = "file:///C:/Users/dines/git/infuse/Practice-Dinesh/workshop/index.html"
    end
    

    def test_open_site_and_maximize
        assert_equal("site opened and maximized",framework.open_site_and_maximize(url))
        driver.quit()
    end

    def test_click_element
        driver.get(url)
        submit_btn = driver.find_element(:tag_name => "button")
        framework.click_element(submit_btn)
        framework.wait_for(2)
        name_input_tag = driver.find_element(:id => "name")
        assert_equal("",name_input_tag["value"])
        driver.quit()
    end 

    def test_wait_for
        assert_equal(3,framework.wait_for(3))
        framework.quit_browser()
    end

    def test_get_element_by_id
        driver.get(url)
        element = framework.get_element({:id => "name"})
        assert_equal("name",element['id'])
        no_element = framework.get_element({:id => "nameee"})
        assert_not_equal("name",no_element['id'])
        framework.quit_browser()
    end 

    def test_get_element_by_class
        driver.get(url)
        element = framework.get_element({:class =>"number"})
        assert_equal("number",element['class'])
        no_element = framework.get_element({:class => "numberrr"})
        assert_not_equal("number",no_element['class'])
        driver.quit()
    end

    def test_get_elements_by_class
        driver.get(url)
        element = framework.get_elements({:class =>"number"})[1]
        assert_equal("2",element.text)
        no_element = framework.get_elements({:class => "numberrr"})
        assert_not_equal("2",no_element)
        driver.quit()
    end
    
    def test_get_element_by_tag_name
        driver.get(url)
        element = framework.get_element({:tag_name => "inputtt"})
        assert_not_equal("name",element['id'])
        no_element = framework.get_elements({:tag_name =>"inputtt"})
        assert_not_equal("Error",no_element)
        driver.quit()
    end

end

