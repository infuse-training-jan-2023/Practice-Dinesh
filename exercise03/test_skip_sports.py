from skip_sports import SkipSport
import unittest

class TestSkipSports(unittest.TestCase):
    def setUp(self):
        self.obj_skip_sport = SkipSport()

    def test_class_instance(self):
        assert(isinstance(self.obj_skip_sport,SkipSport))

    def test_no_number_passed(self):
        arr = ["cricket","TT","Football","Hockey"]
        self.assertEquals("error", self.obj_skip_sport.skip_sports(arr)) 

    def test_int_passed_in_array(self):
        arr = ["cricket","TT",4,"Hockey"]
        self.assertEquals("error", self.obj_skip_sport.skip_sports(arr,2)) 

    def test_no_less_thn_zero(self):
        arr = ["cricket","TT","Football","Hockey"]
        self.assertEquals("invalid number", self.obj_skip_sport.skip_sports(arr,-1)) 

    def test_no_greater_than_equal_to_arr_length(self):
        arr = ["cricket","TT","Football","Hockey"]
        self.assertEquals("invalid number", self.obj_skip_sport.skip_sports(arr,12)) 

    def test_skip_sports_test(self):
        arr = ["cricket","TT","Football","Hockey"]
        self.assertEquals('{2=>"Football", 3=>"Hockey"}', self.obj_skip_sport.skip_sports(arr,2).to_s) 