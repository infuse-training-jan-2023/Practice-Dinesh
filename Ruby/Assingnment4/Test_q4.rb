require 'test/unit'
require_relative "Q4"

class Test_question4 < Test::Unit::TestCase

    def test_instance
        assert Question4.new().instance_of? Question4
    end

    def test_no_less_thn_zero
        arr = ["cricket","TT","Football","Hockey"]
        assert_equal("no should not be less than 0", Question4.new().skip_sports(arr,-1))
    end

    def test_no_greater_than_equal_to_arr_length
        arr = ["cricket","TT","Football","Hockey"]
        assert_equal("no length cannot be greater", Question4.new().skip_sports(arr,12))
    end

    def test_skip_sports_test
        arr = ["cricket","TT","Football","Hockey"]
        assert_equal('{2=>"Football", 3=>"Hockey"}', Question4.new().skip_sports(arr,2).to_s)
    end
end