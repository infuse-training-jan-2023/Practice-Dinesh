from subarray import Subarray
from data import arr

class Test_SubArray:
    def test_subarray_no_input(self):
        obj = Subarray(arr)
        assert obj.subarraySum(" ") == "Invalid Input"
    
    def test_subarray_char_input(self):
        obj = Subarray(arr)
        assert obj.subarraySum("k") == "Invalid Input"
    
    def test_subarray_valid_input(self):
        obj = Subarray(arr)
        assert obj.subarraySum(-93) == 1023
    
    def test_subarray_instance(self):
        obj = Subarray(arr)
        assert isinstance(obj,Subarray)