import sys
sys.path.append('../')

from exercise02.arr_manipulation import ArrManipulation
import unittest

class TestArrManipulation(unittest.TestCase):
    def setUp(self):
        self.obj_arr_manipulation = ArrManipulation([9, 5, 1, 2, 3, 4, 0, -1])

    def test_class_instance(self):
        assert (isinstance(self.obj_arr_manipulation, ArrManipulation))

    def test_for_char_input(self):
        self.assertEqual("error:: '<' not supported between instances of 'str' and 'int'",
                         self.obj_arr_manipulation.element_at("y"))

    def test_element_at_positive(self):
        self.assertEqual(2, self.obj_arr_manipulation.element_at(3))

    def test_for_negative_input(self):
        self.assertEqual("invalid input", self.obj_arr_manipulation.element_at(-1))

    def test_for_outofbonds_input(self):
        self.assertEqual("invalid input", self.obj_arr_manipulation.element_at(11))

    def test_for_negative_startpos(self):
        self.assertEqual("invalid start or end pos", self.obj_arr_manipulation.inclusive_range(
            [9, 5, 1, 2, 3, 4, 0, -1], -1, 5))

    def test_for_negative_startpos(self):
        self.assertEqual("[5, 1, 2, 3]", self.obj_arr_manipulation.inclusive_range(1, 5))

    def test_for_startpos_grtrthn_endpos(self):
        self.assertEqual("invalid start or end pos", self.obj_arr_manipulation.inclusive_range(5, 5))

    def test_for_end_pos_greater_than_arr_len(self):
        self.assertEqual("invalid start or end pos", self.obj_arr_manipulation.inclusive_range(5, 15))

    def test_for_char_input(self):
        self.assertEqual("error:: '<=' not supported between instances of 'int' and 'str'", self.obj_arr_manipulation.inclusive_range("y", 6))

    def test_for_negative_startpos(self):
        self.assertEqual("out of bonds", self.obj_arr_manipulation.non_inclusive_range(-1, 5))

    def test_for_startpos_grtrthn_endpos_non_inc(self):
        self.assertEqual("out of bonds", self.obj_arr_manipulation.non_inclusive_range(7, 5))

    def test_for_end_pos_greater_than_arr_len(self):
        self.assertEqual("out of bonds", self.obj_arr_manipulation.non_inclusive_range(5, 15))

    def test_for_end_pos_greater_than_arr_len(self):
        self.assertEqual([9], self.obj_arr_manipulation.non_inclusive_range(0, 1))

    def test_for_wrong_input(self):
        self.assertEqual("out of bonds", self.obj_arr_manipulation.non_inclusive_range("k", 5))

    def test_for_negative_startpos(self):
        self.assertEqual("out of bonds", self.obj_arr_manipulation.start_and_end(-1, 5))

    def test_start_end_positive(self):
        self.assertEqual([5, 1, 2, 3], self.obj_arr_manipulation.start_and_end(1, 4))

    def test_for_start_pos_greater_than_arr_length(self):
        self.assertEqual("out of bonds", self.obj_arr_manipulation.start_and_end(14, 6))

    def test_for_negative_length(self):
        self.assertEqual("out of bonds", self.obj_arr_manipulation.start_and_end(3, -1))

    def test_for_length_greater_than_arr_length(self):
        self.assertEqual("out of bonds", self.obj_arr_manipulation.start_and_end(2, 15))

    def test_for_start_pos_plus_len_greater_than_arr_length(self):
        self.assertEqual("out of bonds", self.obj_arr_manipulation.start_and_end(6, 6))

    def test_for_wrong_input(self):
        self.assertEqual("error:: '<' not supported between instances of 'str' and 'int'",self.obj_arr_manipulation.start_and_end("g", 5))
