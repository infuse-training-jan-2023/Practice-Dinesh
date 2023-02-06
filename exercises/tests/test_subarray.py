# import sys
# sys.path.append('../')

from exercise04.subarray import Subarray
from data import arr
import unittest

class TestSubArray(unittest.TestCase):
    def setUp(self):
        self.obj_subarray = Subarray()

    def test_subarray_no_input(self):
        self.assertEqual(self.obj_subarray.get_subarray_sum_count(arr," ") , "Invalid Input") 
    
    def test_subarray_char_input(self):
        self.assertEqual( self.obj_subarray.get_subarray_sum_count(arr,"k"), "Invalid Input")
    
    def test_subarray_valid_input(self):
        self.assertEqual(self.obj_subarray.get_subarray_sum_count(arr,-93), 1023) 
    
    def test_subarray_instance(self):
        assert(isinstance(self.obj_subarray,Subarray)) 