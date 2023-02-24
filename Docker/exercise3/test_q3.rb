require 'test/unit'
require_relative "Q3"

class Test_question3 < Test::Unit::TestCase
    def test_instance
        assert Question3.new().instance_of? Question3
    end

    def hashes_test
        assert.equal("{543121=>100, 234545=>345, 235943=>674}",Question3.new().hashses({543121 => 100, 543545.2 => 34, 94652 => 324,89472 => 2344, 234545 => 345, 235943 => 674}))
    end
end

