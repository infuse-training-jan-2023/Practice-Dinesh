require 'test/unit'
require_relative "Q6"

class Test_question6 < Test::Unit::TestCase


    def test_instance
        assert Question6.new().instance_of? Question6
    end

    def test_if_file_not_found
        data = "Originally, John Doe was a sham name used to indicate any plaintiff in an action of ejectment (a legal action to regain property) in civil court [ “ the string that will be base encoded ”]. Richard Roe was the counterpart, to indicate the defendant. These fake names were used in delicate legal matters, a practice that was abolished in English law in 1852."
        str = "the string that will be base encoded"
        assert_equal("File cannot be opened",Question6.new().encode_file(str))
    end

    def test_if_couldnt_write_in_file           
        data = "Originally, John Doe was a sham name used to indicate any plaintiff in an action of ejectment (a legal action to regain property) in civil court [ “ the string that will be base encoded ”]. Richard Roe was the counterpart, to indicate the defendant. These fake names were used in delicate legal matters, a practice that was abolished in English law in 1852."
        str = "the string that will be base encoded"
        assert_equal("couldnt write in file",Question6.new().create_file(str))
    end

    def test_if_flel_created_successfully             
        data = "Originally, John Doe was a sham name used to indicate any plaintiff in an action of ejectment (a legal action to regain property) in civil court [ “ the string that will be base encoded ”]. Richard Roe was the counterpart, to indicate the defendant. These fake names were used in delicate legal matters, a practice that was abolished in English law in 1852."
        str = "the string that will be base encoded"
        assert_equal("file created successfully",Question6.new().create_file(str))
    end

    def test_if_job_done_successfully       
        data = "Originally, John Doe was a sham name used to indicate any plaintiff in an action of ejectment (a legal action to regain property) in civil court [ “ the string that will be base encoded ”]. Richard Roe was the counterpart, to indicate the defendant. These fake names were used in delicate legal matters, a practice that was abolished in English law in 1852."
        str = "the string that will be base encoded"
        assert_equal("job done successfully",Question6.new().create_file(str))
    end

end

    