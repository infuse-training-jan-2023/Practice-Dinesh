# import sys
# sys.path.append('../')

from exercise03.skip_sports import SkipSport
import unittest

class TestSkipSports(unittest.TestCase):
    def setUp(self):
        self.obj_skip_sport = SkipSport()

    def test_class_instance(self):
        assert(isinstance(self.obj_skip_sport,SkipSport))

    def test_no_number_passed(self):
        arr = ["cricket","TT","Football","Hockey"]
        self.assertEqual("error:: '<' not supported between instances of 'str' and 'int'", self.obj_skip_sport.skip_sports(arr,'x')) 

    def test_int_passed_in_array(self):
        arr = ["cricket","TT",4,"Hockey"]
        self.assertEqual({2: 4, 3: 'Hockey'}, self.obj_skip_sport.skip_sports(arr,2)) 

    def test_no_less_thn_zero(self):
        arr = ["cricket","TT","Football","Hockey"]
        self.assertEqual("error:: invalid number", self.obj_skip_sport.skip_sports(arr,-1)) 

    def test_no_greater_than_equal_to_arr_length(self):
        arr = ["cricket","TT","Football","Hockey"]
        self.assertEqual("error:: invalid number", self.obj_skip_sport.skip_sports(arr,12)) 

    def test_skip_sports_test(self):
        arr = ["cricket","TT","Football","Hockey"]
        self.assertEqual({2:'Football', 3:'Hockey'}, self.obj_skip_sport.skip_sports(arr,2)) 