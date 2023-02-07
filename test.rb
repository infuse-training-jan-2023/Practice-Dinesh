require 'test/unit'
require_relative 'main'

class TestExample < Test::Unit::TestCase

    def test_element_at_valid_index
        obj = Main.new
        assert_equal(2, obj.element_at([9, 5, 1, 2, 3, 4, 0,-1], 3))
    end
    def test_element_at_out_of_bounds
        obj = Main.new
        assert_equal(-1, obj.element_at([9, 5, 1, 2, 3, 4, 0,-1], 10))
    end
    def test_element_at_valid_index_negative_index
        obj = Main.new
        assert_equal(-1, obj.element_at([9, 5, 1, 2, 3, 4, 0,-1], -5))
    end
    def test_element_at_valid_index_empty_array
        obj = Main.new
        assert_equal(-1, obj.element_at([], 6))
    end
end