require 'test/unit'
require_relative "Q1"

class Test_question1 < Test::Unit::TestCase

    def test_for_zero_second_value
        assert_equal("019-11.62",Question1.new().serial_average("019-00.00-23.23"))
    end
    def test_for_zero_third_value
        assert_equal("019-06.57",Question1.new().serial_average("019-13.13-00.00"))
    end
    def test_for_zero_both_value
        assert_equal("019-00.00",Question1.new().serial_average("019-00.00-00.00"))
    end
    def test_serial_number
        assert_equal("019-18.18",Question1.new().serial_average("019-13.13-23.23"))
    end
end