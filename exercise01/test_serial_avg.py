from serial_avg import Serial_avg

class Test_serial_avg:

    def test_class_instance(self):
        obj_serial_avg = Serial_avg()
        assert(isinstance(obj_serial_avg,Serial_avg))

    def test_char_in_int_string(self):
        obj_serial_avg = Serial_avg()
        assert "error::  could not convert string to float: '9f.99'" == obj_serial_avg.get_serial_average("019-9f.99-46.99")

    def test_wrong_length_input(self):
        obj_serial_avg = Serial_avg()
        assert "input length is not as required" == obj_serial_avg.get_serial_average("019-99.678-46.99")

    def test_for_zero_second_value(self):
        obj_serial_avg = Serial_avg()
        assert "019-11.62" == obj_serial_avg.get_serial_average("019-00.00-23.23")

    def test_for_zero_third_value(self):
        obj_serial_avg = Serial_avg()
        assert "019-49.84" == obj_serial_avg.get_serial_average("019-99.68-00.00")
 
    def test_for_zero_both_value(self):
        obj_serial_avg = Serial_avg()
        assert "019-00.00" == obj_serial_avg.get_serial_average("019-00.00-00.00")

    def test_serial_number(self):
        obj_serial_avg = Serial_avg()
        assert "019-18.18" == obj_serial_avg.get_serial_average("019-13.13-23.23")

       