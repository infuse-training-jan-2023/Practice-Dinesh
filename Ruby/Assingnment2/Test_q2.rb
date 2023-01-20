require 'test/unit'
require_relative "Q2"

class Test_question2 < Test::Unit::TestCase

    # def test_for_negative_input
    #   assert_equal("invalid input",Question2.new().element_at([9, 5, 1, 2, 3, 4, 0,-1],-1))
    # end  

    # def test_for_outofbonds_input
    #     assert_equal("invalid input",Question2.new().element_at([9, 5, 1, 2, 3, 4, 0,-1],11))
    # end



    # def test_for_negative_startpos
    #     assert_equal("start pos less than zero",Question2.new().inclusive_range([9, 5, 1, 2, 3, 4, 0,-1],-1,5))
    # end

    # def test_for_startpos_grtrthn_endpos
    #     assert_equal([4],Question2.new().inclusive_range([9, 5, 1, 2, 3, 4, 0,-1],5,5))
    # end

    # def test_for_end_pos_greater_than_arr_len
    #     assert_equal("end pos out of bonds",Question2.new().inclusive_range([9, 5, 1, 2, 3, 4, 0,-1],5,15))
    # end



    # def test_for_negative_startpos
    #     assert_equal("start pos less than zero",Question2.new().non_inclusive_range([9, 5, 1, 2, 3, 4, 0,-1],-1,5))
    # end

    # def test_for_startpos_grtrthn_endpos
    #     assert_equal("start pos should be less than end pos",Question2.new().non_inclusive_range([9, 5, 1, 2, 3, 4, 0,-1],5,5))
    # end

    # def test_for_end_pos_greater_than_arr_len
    #     assert_equal("end pos out of bonds",Question2.new().non_inclusive_range([9, 5, 1, 2, 3, 4, 0,-1],5,15))
    # end


    def test_for_negative_startpos
        assert_equal("invalid start position",Question2.new().start_and_end([9, 5, 1, 2, 3, 4, 0,-1],-1,5))
    end

    def test_for_start_pos_greater_than_arr_length
        assert_equal("invalid start position",Question2.new().start_and_end([9, 5, 1, 2, 3, 4, 0,-1],14,6))
    end

    def test_for_negative_length
        assert_equal("improper length",Question2.new().start_and_end([9, 5, 1, 2, 3, 4, 0,-1],3,-1))
    end

    def test_for_length_greater_than_arr_length
        assert_equal("improper length",Question2.new().start_and_end([9, 5, 1, 2, 3, 4, 0,-1],2,15))
    end

    def test_for_start_pos_plus_len_greater_than_arr_length
        assert_equal("sorry out of length try with less length",Question2.new().start_and_end([9, 5, 1, 2, 3, 4, 0,-1],6,6))
    end
 



end

