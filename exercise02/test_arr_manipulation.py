
from arr_manipulation import Arr_manipulation


class Test_arr_manipulation:

    def test_class_instance(self):
        arr = [9, 5, 1, 2, 3, 4, 0, -1]
        obj_arr_manipulation = Arr_manipulation(arr)
        assert (isinstance(obj_arr_manipulation, Arr_manipulation))

    def test_for_char_input(self):
        arr = [9, 5, 1, 2, 3, 4, 0, -1]
        obj_arr_manipulation = Arr_manipulation(arr)
        assert "error" == obj_arr_manipulation.element_at("y")

    def test_element_at_positive(self):
        arr = [9, 5, 1, 2, 3, 4, 0, -1]
        obj_arr_manipulation = Arr_manipulation(arr)
        assert 2 == obj_arr_manipulation.element_at(3)

    def test_for_negative_input(self):
        arr = [9, 5, 1, 2, 3, 4, 0, -1]
        obj_arr_manipulation = Arr_manipulation(arr)
        assert "invalid input" == obj_arr_manipulation.element_at(-1)

    def test_for_outofbonds_input(self):
        arr = [9, 5, 1, 2, 3, 4, 0, -1]
        obj_arr_manipulation = Arr_manipulation(arr)
        assert "invalid input" == obj_arr_manipulation.element_at(11)




    def test_for_negative_startpos(self):
        arr = [9, 5, 1, 2, 3, 4, 0, -1]
        obj_arr_manipulation = Arr_manipulation(arr)
        assert "invalid start or end pos" == obj_arr_manipulation.inclusive_range(
            [9, 5, 1, 2, 3, 4, 0, -1], -1, 5)

    def test_for_negative_startpos(self):
        arr = [9, 5, 1, 2, 3, 4, 0, -1]
        obj_arr_manipulation = Arr_manipulation(arr)
        assert "[5, 1, 2, 3]" == obj_arr_manipulation.inclusive_range(1, 5)

    def test_for_startpos_grtrthn_endpos(self):
        arr = [9, 5, 1, 2, 3, 4, 0, -1]
        obj_arr_manipulation = Arr_manipulation(arr)
        assert "invalid start or end pos" == obj_arr_manipulation.inclusive_range(
            5, 5)

    def test_for_end_pos_greater_than_arr_len(self):
        arr = [9, 5, 1, 2, 3, 4, 0, -1]
        obj_arr_manipulation = Arr_manipulation(arr)
        assert "invalid start or end pos" == obj_arr_manipulation.inclusive_range(
            5, 15)

    def test_for_char_input(self):
        arr = [9, 5, 1, 2, 3, 4, 0, -1]
        obj_arr_manipulation = Arr_manipulation(arr)
        assert "error" == obj_arr_manipulation.inclusive_range("y", 6)





    def test_for_negative_startpos(self):
        arr = [9, 5, 1, 2, 3, 4, 0, -1]
        obj_arr_manipulation = Arr_manipulation(arr)
        assert "out of bonds" == obj_arr_manipulation.non_inclusive_range(
            -1, 5)

    def test_for_startpos_grtrthn_endpos_non_inc(self):
        arr = [9, 5, 1, 2, 3, 4, 0, -1]
        obj_arr_manipulation = Arr_manipulation(arr)
        assert "out of bonds" == obj_arr_manipulation.non_inclusive_range(7, 5)

    def test_for_end_pos_greater_than_arr_len(self):
        arr = [9, 5, 1, 2, 3, 4, 0, -1]
        obj_arr_manipulation = Arr_manipulation(arr)
        assert "out of bonds" == obj_arr_manipulation.non_inclusive_range(5, 15)

    def test_for_end_pos_greater_than_arr_len(self):
        arr = [9, 5, 1, 2, 3, 4, 0, -1]
        obj_arr_manipulation = Arr_manipulation(arr)
        assert [9] == obj_arr_manipulation.non_inclusive_range(0, 1)


    def test_for_wrong_input(self):
        arr = [9, 5, 1, 2, 3, 4, 0, -1]
        obj_arr_manipulation = Arr_manipulation(arr)
        assert "out of bonds" == obj_arr_manipulation.non_inclusive_range("k", 5)



    def test_for_negative_startpos(self):
        arr = [9, 5, 1, 2, 3, 4, 0, -1]
        obj_arr_manipulation = Arr_manipulation(arr)
        assert "out of bonds" == obj_arr_manipulation.start_and_end(-1, 5)

    def test_start_end_positive(self):
        arr = [9, 5, 1, 2, 3, 4, 0, -1]
        obj_arr_manipulation = Arr_manipulation(arr)
        assert [5, 1, 2, 3] == obj_arr_manipulation.start_and_end(1, 4)

    def test_for_start_pos_greater_than_arr_length(self):
        arr = [9, 5, 1, 2, 3, 4, 0, -1]
        obj_arr_manipulation = Arr_manipulation(arr)
        assert "out of bonds" == obj_arr_manipulation.start_and_end(14, 6)

    def test_for_negative_length(self):
        arr = [9, 5, 1, 2, 3, 4, 0, -1]
        obj_arr_manipulation = Arr_manipulation(arr)
        assert "out of bonds" == obj_arr_manipulation.start_and_end(3, -1)

    def test_for_length_greater_than_arr_length(self):
        arr = [9, 5, 1, 2, 3, 4, 0, -1]
        obj_arr_manipulation = Arr_manipulation(arr)
        assert "out of bonds" == obj_arr_manipulation.start_and_end(2, 15)

    def test_for_start_pos_plus_len_greater_than_arr_length(self):
        arr = [9, 5, 1, 2, 3, 4, 0, -1]
        obj_arr_manipulation = Arr_manipulation(arr)
        assert "out of bonds" == obj_arr_manipulation.start_and_end(6, 6)

    def test_for_wrong_input(self):
        arr = [9, 5, 1, 2, 3, 4, 0, -1]
        obj_arr_manipulation = Arr_manipulation(arr)
        assert "error" == obj_arr_manipulation.start_and_end("g", 5)
