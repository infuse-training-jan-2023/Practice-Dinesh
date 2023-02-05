
require_relative "Selenium_Framework_2"


class Automate_web_page

    attr_accessor :fw
    def initialize
        @fw = Framework.new()
    end

    def open_website ()
        fw.open_site_and_maximize("file:///C:/Users/dines/git/infuse/Practice-Dinesh/workshop/index.html")
        fw.wait_for(2)
    end

    def enter_name_data()
        name_element = fw.get_element({:id => 'name'})
        # name_element = fw.get_element_by_id("name")
        puts name_element
        fw.click_element(name_element)
        fw.send_data("Dinesh Gawas",name_element)
    end

    def enter_email_data()
        email_element = fw.get_element({:id => "mail"})

        # email_element = fw.get_element_by_id("mail")
        fw.click_element(email_element)
        fw.send_data("Dineshgawas64@gmail.com",email_element)
    end

    def enter_password_data()
        password_element = fw.get_element({:id => "password"})
        # password_element = fw.get_element_by_id("password")
        fw.click_element(password_element)
        fw.send_data("Dinesh Gawas",password_element)
    end

    def enter_age_data()
        radio_button = fw.get_element({:id => "over_13"}) 
        # radio_button = fw.get_element_by_id("over_13")
        fw.click_element(radio_button)
    end

    def enter_bio_data()
        text_area = fw.get_element({:id => "bio"})
        fw.click_element(text_area)
        fw.send_data("intern at Infuse",text_area)
    end

    def enter_job_role_data()
        drop_down = fw.get_element({:id => "job"})
        fw.click_element(drop_down)

        options = fw.get_elements({:tag_name => "options"},drop_down)
        fw.wait_for(1)
        fw.click_element(options[4])
    end

    def enter_intrests_data()
        checkbox = fw.get_element_by_id("development")
        fw.click_element(checkbox)
    end

    def submit_data()
        button = fw.get_element_by_tag_name("button")
        fw.click_element(button)
    end


    def sign_up()

        enter_name_data()

        enter_email_data()

        enter_password_data()

        enter_age_data()

        enter_bio_data()

        enter_job_role_data()

        enter_intrests_data()

        submit_data()
       
        
    end

    
end

at_wp = Automate_web_page.new()
at_wp.open_website()
at_wp.sign_up()

