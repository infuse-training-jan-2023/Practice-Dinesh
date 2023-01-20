require 'test/unit'
require_relative "Q5"

class Test_question5 < Test::Unit::TestCase
    def test_instance
        assert Question5.new().instance_of? Question5
    end

    def test_if_file_not_read
        assert_equal("file not found",Question5.new().rewrite_json_data())
    end

    def test_if_file_not_read
        assert_equal("file not created",Question5.new().rewrite_json_data())
    end

    def test_if_file_not_read
        assert_equal("json file created",Question5.new().rewrite_json_data())
    end
end