require_relative "Selenium_Framework_2"


class Automate_lenskart

    attr_accessor :framework_obj
    def initialize
        @framework_obj = Framework.new()
    end

    def opening_website
        framework_obj.opening_site_and_maximizing("https://www.lenskart.com")
        framework_obj.wait_for(5)
        puts "website opened"
        puts framework_obj.get_title()
    end

    def register()
        # cancel_popup()
        signin_and_register_btn = framework_obj.get_element_by_class("user-name")
        register_btn = framework_obj.get_elements_by_tag_name("span",signin_and_register_btn)
        framework_obj.clicking_element(register_btn[1])
        framework_obj.wait_for(2)

        sending_registration_data()
        puts "registered"
    end

    def cancel_popup
        notification_popup = framework_obj.get_element_by_id("wzrk-cancel")
        framework_obj.clicking_element(notification_popup)
        puts "cancelled popup"
    end
    

    def sending_registration_data()
        f_name_input_tag = framework_obj.get_element_by_id("firstName")
        framework_obj.clicking_element(f_name_input_tag)
        framework_obj.sending_data("Dinesh",f_name_input_tag)
        framework_obj.wait_for(1)

        l_name_input_tag = framework_obj.get_element_by_id("lastName")
        framework_obj.clicking_element(l_name_input_tag)
        framework_obj.sending_data("gawas",l_name_input_tag)
        framework_obj.wait_for(1)

        
        phone_no_input = framework_obj.get_element_by_class("phone-number-input")
        framework_obj.clicking_element(phone_no_input)
        framework_obj.sending_data("9130991489",phone_no_input)
        framework_obj.wait_for(1)

        email_input_tag = framework_obj.get_element_by_id("email")
        framework_obj.clicking_element(email_input_tag)
        framework_obj.sending_data("dineshgawas11@gmail.com",email_input_tag)  
        framework_obj.wait_for(1)    
        
        password_input_div = framework_obj.get_element_by_class("sign-up-password-input-field-container")
        password_input = framework_obj.get_element_by_tag_name("input",password_input_div)
        framework_obj.clicking_element(password_input)
        framework_obj.sending_data("9130991477",password_input)
        framework_obj.wait_for(1)

        register_button = framework_obj.get_element_by_class("create-account-button")
        framework_obj.clicking_element(register_button)
        framework_obj.wait_for(2)
        puts "sent register data"
    end

    def searching_for_spec()
        # cancel_popup()
        searchbar = framework_obj.get_element_by_tag_name("input")
        framework_obj.clicking_element(searchbar)
        framework_obj.sending_data("computer glass",searchbar)
        framework_obj.sending_data(:return,searchbar)
        framework_obj.wait_for(4)
        sorting_by_new()
        selecting_frame()
        framework_obj.wait_for(4)
        glasses = framework_obj.get_element_by_class("productWidgetBox_widgetImage")
        framework_obj.wait_for(4)
        framework_obj.clicking_element(glasses)
        framework_obj.wait_for(3)
        puts "searched"
    end

    def sorting_by_new()
        sort_by_btn = framework_obj.get_element_by_class("select-lk")
        framework_obj.clicking_element(sort_by_btn)
        options = framework_obj.get_elements_by_tag_name("option",sort_by_btn)
        framework_obj.clicking_element(options[3])
        framework_obj.wait_for(1)
        puts "sorted"
        puts "done"
    end

    def selecting_frame()
        framework_obj.wait_for(2)
        full_frame = framework_obj.get_elements_by_class("listItem")
        framework_obj.clicking_element(full_frame[4])
        framework_obj.wait_for(2)
        puts "frame selected"
        puts "completed"
    end

    def adding_to_wishlist()

        framework_obj.switch_tab()
        puts(framework_obj.get_title())
        framework_obj.wait_for(5)
        # buy_now_button = framework_obj.get_element_by_class("buy-now-btn")
        buy_now_button = framework_obj.get_element_by_xpath('/html/body/div[1]/div/div[2]/div/div/div[2]/div[2]/div[4]/div/div[1]/button')
        framework_obj.clicking_element(buy_now_button)
        framework_obj.wait_for(5)
        zero_power_div = framework_obj.get_element_by_xpath('//*[@id="mySidenav"]/div[2]/div[2]/div/div/div[2]/div')
        framework_obj.clicking_element(zero_power_div)
        framework_obj.wait_for(2)
        bluecut_logo_div = framework_obj.get_element_by_class("bluecut-logo")
        framework_obj.get_element_by_tag_name("button",bluecut_logo_div)
        select_lens_btn = framework_obj.get_element_by_tag_name("button",bluecut_logo_div)
        framework_obj.clicking_element(select_lens_btn)
        framework_obj.wait_for(2)
        product_price = framework_obj.get_element_by_xpath('//*[@id="content"]/div/div[3]/div/div[2]/div/div[2]/div[3]/span[2]')
        price_as_int =  product_price.text[1..7].to_i
        money = 1000
        if (price_as_int < money)
            place_order()
        else
            add_to_wishlist()
        end
        framework_obj.wait_for(5)
    end

    def place_order()
        order_button = framework_obj.get_element_by_class("place-order-cart")
        framework_obj.clicking_element(order_button)
        puts "placed order"
    end

    def add_to_wishlist()
        remove_btn = framework_obj.get_element_by_class("cart-modify-text")
        framework_obj.clicking_element(remove_btn)
        framework_obj.wait_for(2)

        add_to_wishlist = framework_obj.get_element_by_class("popup-wishlist")
        framework_obj.clicking_element(add_to_wishlist)

        puts "completed"
        
    end


end

auto_lenskart = Automate_lenskart.new()
auto_lenskart.opening_website()

# auto_lenskart.register()

auto_lenskart.searching_for_spec()

# auto_lenskart.adding_to_wishlist()
