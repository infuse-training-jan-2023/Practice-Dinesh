# import sys
# sys.path.append('../')

from data import arr

class Subarray:
    def __init__(self) -> None:
        pass

    def get_subarray_sum_count(self,arr, k):
        try:
            current_Sum = 0
            Count = 0
            prevSums = {0:1}        
            
            for num in arr:
                
                current_Sum += num
                
                if current_Sum - k in prevSums:
                    Count += prevSums[current_Sum - k]
                    
                if current_Sum in prevSums:
                    prevSums[current_Sum] += 1
                else:
                    prevSums[current_Sum] = 1

            return Count
        except:
            return "Invalid Input"

obj = Subarray()
print(obj.get_subarray_sum_count(arr,-93))
