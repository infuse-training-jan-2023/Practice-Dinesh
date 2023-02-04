require 'test/unit'
require_relative "Selenium_Framework_2"

class Test_framework < Test::Unit::TestCase
   

    def test_open_site_and_maximize
        url = "file:///C:/Users/dines/git/infuse/Practice-Dinesh/workshop/index.html"
        # url = "file:///app/index.html"
        obj = Framework.new()
        assert_equal("site opened and maximized",obj.open_site_and_maximize(url))
        obj.quit_browser()
    end


    def test_wait_for
        url = "file:///C:/Users/dines/git/infuse/Practice-Dinesh/workshop/index.html"
        # url = "file:///app/index.html"
        obj = Framework.new()
        assert_equal(3,obj.wait_for(3))
        obj.quit_browser()
    end

    def test_click_element
        url = "file:///C:/Users/dines/git/infuse/Practice-Dinesh/workshop/index.html"
        # url = "file:///app/index.html"
        obj = Framework.new()
        obj.open_site_and_maximize(url)
        submit_btn = obj.get_element({:tag_name => "button"})
        obj.click_element(submit_btn)
        obj.wait_for(2)
        name_input_tag = obj.get_element({:id => "name"})
        assert_equal("",name_input_tag["value"])
        obj.quit_browser()
    end  

    def test_get_element_by_id
        url = "file:///C:/Users/dines/git/infuse/Practice-Dinesh/workshop/index.html"
        # url = "file:///app/index.html"
        obj = Framework.new()
        obj.open_site_and_maximize(url)
        element = obj.get_element({:id => "name"})
        assert_equal("name",element['id'])
        no_element = obj.get_element({:id => "nameee"})
        assert_not_equal("name",no_element['id'])
        obj.quit_browser()
    end 

    def test_get_element_by_class
        url = "file:///C:/Users/dines/git/infuse/Practice-Dinesh/workshop/index.html"
        # url = "file:///app/index.html"
        obj = Framework.new()
        obj.open_site_and_maximize(url)
        element = obj.get_element({:class =>"number"})
        assert_equal("number",element['class'])
        no_element = obj.get_element({:class => "numberrr"})
        assert_not_equal("number",no_element['class'])
        obj.quit_browser()
    end

    def test_get_elements_by_class
        url = "file:///C:/Users/dines/git/infuse/Practice-Dinesh/workshop/index.html"
        # url = "file:///app/index.html"
        obj = Framework.new()
        obj.open_site_and_maximize(url)
        element = obj.get_elements({:class =>"number"})[1]
        assert_equal("2",element.text)
        no_element = obj.get_elements({:class => "numberrr"})
        assert_not_equal("2",no_element)
        obj.quit_browser()
    end
    
    def test_get_element_by_tag_name_negativetest
        url = "file:///C:/Users/dines/git/infuse/Practice-Dinesh/workshop/index.html"
        # url = "file:///app/index.html"
        obj = Framework.new()
        obj.open_site_and_maximize(url)
        element = obj.get_element({:tag_name => "inputtt"})
        assert_not_equal("name",element['id'])
        no_element = obj.get_elements({:tag_name =>"inputtt"})
        assert_not_equal("Error",no_element)
        obj.quit_browser()
    end

end

