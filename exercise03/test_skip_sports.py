from skip_sports import Skip_sport

class Test_skip_sports:

    def test_class_instance(self):
        obj_skip_sport = Skip_sport()
        assert(isinstance(obj_skip_sport,Skip_sport))

    def test_no_number_passed(self):
        arr = ["cricket","TT","Football","Hockey"]
        obj_skip_sport = Skip_sport()
        assert "error", obj_skip_sport.skip_sports(arr)

    def test_int_passed_in_array(self):
        arr = ["cricket","TT",4,"Hockey"]
        obj_skip_sport = Skip_sport()
        assert "error", obj_skip_sport.skip_sports(arr,2)

    def test_no_less_thn_zero(self):
        arr = ["cricket","TT","Football","Hockey"]
        obj_skip_sport = Skip_sport()
        assert "invalid number", obj_skip_sport.skip_sports(arr,-1)

    def test_no_greater_than_equal_to_arr_length(self):
        arr = ["cricket","TT","Football","Hockey"]
        obj_skip_sport = Skip_sport()
        assert "invalid number", obj_skip_sport.skip_sports(arr,12)

    def test_skip_sports_test(self):
        arr = ["cricket","TT","Football","Hockey"]
        obj_skip_sport = Skip_sport()
        assert '{2=>"Football", 3=>"Hockey"}', obj_skip_sport.skip_sports(arr,2).to_s
