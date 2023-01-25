
require_relative "Selenium_Framework_2"


class Automate_web_page

    attr_accessor :fw
    def initialize
        @fw = Framework.new()
    end

    def open_website ()
        fw.opening_site_and_maximizing("file:///C:/Users/dines/git/infuse/Practice-Dinesh/workshop/misc/index.html")
        fw.wait_for(2)
    end

    def entering_name_data()
        name_element = fw.get_element_by_id("name")
        fw.clicking_element(name_element)
        fw.sending_data("Dinesh Gawas",name_element)
    end

    def entering_email_data()
        email_element = fw.get_element_by_id("mail")
        fw.clicking_element(email_element)
        fw.sending_data("Dineshgawas64@gmail.com",email_element)
    end

    def entering_password_data()
        password_element = fw.get_element_by_id("password")
        fw.clicking_element(password_element)
        fw.sending_data("Dinesh Gawas",password_element)
    end

    def entering_age_data()
        radio_button = fw.get_element_by_id("over_13")
        fw.clicking_element(radio_button)
    end

    def entering_bio_data()
        text_area = fw.get_element_by_id("bio")
        fw.clicking_element(text_area)
        fw.sending_data("intern at Infuse",text_area)
    end

    def entering_job_role_data()
        drop_down = fw.get_element_by_id("job")
        fw.clicking_element(drop_down)

        options = fw.get_elements_by_tag_name("option",drop_down)
        fw.wait_for(1)
        fw.clicking_element(options[4])
    end

    def entering_intrests_data()
        checkbox = fw.get_element_by_id("development")
        fw.clicking_element(checkbox)
    end

    def submitting_data()
        button = fw.get_element_by_tag_name("button")
        fw.clicking_element(button)
    end


    def sign_up()

        entering_name_data()

        entering_email_data()

        entering_password_data()

        entering_age_data()

        entering_bio_data()

        entering_job_role_data()

        entering_intrests_data()

        submitting_data()
       
        
    end

    
end

at_wp = Automate_web_page.new()
at_wp.open_website()
at_wp.sign_up()

