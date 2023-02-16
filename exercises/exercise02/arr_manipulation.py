
class ArrManipulation:

    def __init__(self, arr) -> None:
        self.arr = arr

    def validation(self,start_pos=None,end_pos=None,index =None,length=None)->int:
        if(index is not None):
            return(index < 0 or index > len(self.arr))
        if(start_pos and end_pos is not None):
            return (end_pos <= start_pos) or (start_pos < 0) or (start_pos > len(self.arr)) or (end_pos >= len(self.arr))
        if(start_pos and length is not None):
            return ((start_pos < 0) or (length <= 0) or(start_pos > len(self.arr)) or (start_pos+length > len(self.arr)) or (length > len(self.arr)))

    def element_at(self, index:int)->str:
        try:
            if self.validation(index = index):
                raise Exception("invalid input")
            return self.arr[index]
        except Exception as e:
            return f"error:: {e}"

    def inclusive_range(self, start_pos:int, end_pos:int) -> int:
        try:
            if self.validation(start_pos = start_pos, end_pos = end_pos):
                raise Exception("invalid start or end pos")
            return self.arr[start_pos:(end_pos-start_pos)+1]
        except Exception as e:
            return f"error:: {e}"

    def non_inclusive_range(self, start_pos:int, end_pos:int) -> int:
        try:
            if self.validation(start_pos = start_pos, end_pos = end_pos):
                raise Exception("out of bonds")
            return self.arr[start_pos:(end_pos-start_pos)]
        except Exception as e:
            return f"error:: {e}"

    def start_and_end(self, start_pos:int, length:int) -> int:
        try:
            if self.validation(start_pos = start_pos,length=length): 
                raise Exception("out of bonds")
            return self.arr[start_pos:start_pos+length]
        except Exception as e:
            return f"error:: {e}"


arr = [9, 5, 1, 2, 3, 4, 0, -1]
obj_arr_manipulation = ArrManipulation(arr)
print(obj_arr_manipulation.element_at(3))
print(obj_arr_manipulation.inclusive_range(1,5))
print(obj_arr_manipulation.non_inclusive_range(0, 1))
print(obj_arr_manipulation.start_and_end(1,4))
