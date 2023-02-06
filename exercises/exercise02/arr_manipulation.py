
class ArrManipulation:

    def __init__(self, arr) -> None:
        self.arr = arr

    def element_at(self, index:int)->str:
        try:
            if index < 0 or index > len(self.arr):
                return "invalid input"
            return self.arr[index]
        except Exception as e:
            return f"error:: {e}"

    def inclusive_range(self, start_pos:int, end_pos:int) -> int:
        try:
            if (end_pos <= start_pos) or (start_pos < 0) or (end_pos > len(self.arr)) or (end_pos < start_pos):
                return "invalid start or end pos"
            return self.arr[start_pos:(end_pos-start_pos)+1]
        except Exception as e:
            return f"error:: {e}"

    def non_inclusive_range(self, start_pos:int, end_pos:int) -> int:
        try:
            if (start_pos > end_pos) or (end_pos > len(self.arr)) or (start_pos < 0):
                return "out of bonds"
            return self.arr[start_pos:(end_pos-start_pos)]
        except Exception as e:
            return f"error:: {e}"

    def start_and_end(self, start_pos:int, leng:int) -> int:
        try:
            if start_pos < 0 or start_pos > len(self.arr) or leng <= 0 or leng > len(self.arr) or (start_pos + leng > len(self.arr)):
                return "out of bonds"
            return self.arr[start_pos:start_pos+leng]
        except Exception as e:
            return f"error:: {e}"


arr = [9, 5, 1, 2, 3, 4, 0, -1]
obj_arr_manipulation = ArrManipulation(arr)
print(obj_arr_manipulation.element_at('y'))
print(obj_arr_manipulation.inclusive_range(1,5))
print(obj_arr_manipulation.non_inclusive_range(0, 1))
print(obj_arr_manipulation.start_and_end(1,4))
