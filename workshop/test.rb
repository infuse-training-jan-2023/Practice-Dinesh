require 'test/unit'
require_relative "Selenium_Framework_2"

class Test_framework < Test::Unit::TestCase
   

    def test_opening_site_and_maximizing
        # url = "file:///C:/Users/dines/git/infuse/Practice-Dinesh/workshop/index.html"
        url = "file:///app/index.html"
        obj = Framework.new()
        assert_equal("site opened and maximized",obj.opening_site_and_maximizing(url))
        obj.quit_browser()
    end


    def test_wait_for
        # url = "file:///C:/Users/dines/git/infuse/Practice-Dinesh/workshop/index.html"
        url = "file:///app/index.html"
        obj = Framework.new()
        assert_equal(3,obj.wait_for(3))
        obj.quit_browser()
    end

    def test_clicking_element
        # url = "file:///C:/Users/dines/git/infuse/Practice-Dinesh/workshop/index.html"
        url = "file:///app/index.html"
        obj = Framework.new()
        obj.opening_site_and_maximizing(url)
        submit_btn = obj.get_element_by_tag_name("button")
        obj.clicking_element(submit_btn)
        obj.wait_for(2)
        name_input_tag = obj.get_element_by_id("name")
        assert_equal("",name_input_tag["value"])
        obj.quit_browser()
    end  

    def test_get_element_by_id
        # url = "file:///C:/Users/dines/git/infuse/Practice-Dinesh/workshop/index.html"
        url = "file:///app/index.html"
        obj = Framework.new()
        obj.opening_site_and_maximizing(url)
        element = obj.get_element_by_id("name")
        assert_equal("name",element['id'])
        obj.quit_browser()
    end 

    def test_get_element_by_id_negativetest
        # url = "file:///C:/Users/dines/git/infuse/Practice-Dinesh/workshop/index.html"
        url = "file:///app/index.html"
        obj = Framework.new()
        obj.opening_site_and_maximizing(url)
        element = obj.get_element_by_id("nameee")
        assert_not_equal("name",element['id'])
        obj.quit_browser()
    end 

    def test_get_element_by_class
        # url = "file:///C:/Users/dines/git/infuse/Practice-Dinesh/workshop/index.html"
        url = "file:///app/index.html"
        obj = Framework.new()
        obj.opening_site_and_maximizing(url)
        element = obj.get_element_by_class("number")
        assert_equal("number",element['class'])
        obj.quit_browser()
    end

    def test_get_element_by_class_negativetest
        # url = "file:///C:/Users/dines/git/infuse/Practice-Dinesh/workshop/index.html"
        url = "file:///app/index.html"
        obj = Framework.new()
        obj.opening_site_and_maximizing(url)
        element = obj.get_element_by_class("numberrr")
        assert_not_equal("number",element['class'])
        obj.quit_browser()
    end

    def test_get_elements_by_class
        # url = "file:///C:/Users/dines/git/infuse/Practice-Dinesh/workshop/index.html"
        url = "file:///app/index.html"
        obj = Framework.new()
        obj.opening_site_and_maximizing(url)
        element = obj.get_elements_by_class("number")[1]
        assert_equal("2",element.text)
        obj.quit_browser()
    end

    def test_get_elements_by_class_negativetest
        # url = "file:///C:/Users/dines/git/infuse/Practice-Dinesh/workshop/index.html"
        url = "file:///app/index.html"
        obj = Framework.new()
        obj.opening_site_and_maximizing(url)
        element = obj.get_elements_by_class("numberrr")
        assert_not_equal("2",element)
        obj.quit_browser()
    end

    
    def test_get_element_by_tag_name_negativetest
        # url = "file:///C:/Users/dines/git/infuse/Practice-Dinesh/workshop/index.html"
        url = "file:///app/index.html"
        obj = Framework.new()
        obj.opening_site_and_maximizing(url)
        element = obj.get_element_by_tag_name("inputtt")
        assert_not_equal("name",element['id'])
        obj.quit_browser()
    end

    def test_get_elements_by_tag_name_negativetest
        # url = "file:///C:/Users/dines/git/infuse/Practice-Dinesh/workshop/index.html"
        url = "file:///app/index.html"
        obj = Framework.new()
        obj.opening_site_and_maximizing(url)
        element = obj.get_elements_by_tag_name("inputtt")
        assert_equal("Error",element)
        obj.quit_browser()
    end

end

