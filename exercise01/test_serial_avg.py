from serial_avg import Serial_avg
import unittest

class Test_serial_avg(unittest.TestCase):
    def setUp(self):
        self.obj_serial_avg = Serial_avg()

    def test_class_instance(self):
        assert(isinstance(self.obj_serial_avg,Serial_avg))

    def test_char_in_int_string(self):
        self.assertEqual("error::  could not convert string to float: '9f.99'",self.obj_serial_avg.get_serial_average("019-9f.99-46.99")) 

    def test_wrong_length_input(self):
        self.assertEqual("input length is not as required", self.obj_serial_avg.get_serial_average("019-99.678-46.99")) 

    def test_for_zero_second_value(self):
        self.assertEqual("019-11.62", self.obj_serial_avg.get_serial_average("019-00.00-23.23")) 

    def test_for_zero_third_value(self):
        self.assertEqual("019-49.84",self.obj_serial_avg.get_serial_average("019-99.68-00.00")) 
 
    def test_for_zero_both_value(self):
        self.assertEqual("019-00.00",self.obj_serial_avg.get_serial_average("019-00.00-00.00")) 

    def test_serial_number(self):
        self.assertEqual("019-18.18", self.obj_serial_avg.get_serial_average("019-13.13-23.23")) 

       