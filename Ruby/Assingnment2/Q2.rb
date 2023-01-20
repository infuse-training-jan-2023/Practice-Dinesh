# 2) For this challenge, your task is to complete the functions using ruby syntax.Assume the array to bearr = [9, 5, 1, 2, 3, 4, 0,-1]
arr = [9, 5, 1, 2, 3, 4, 0,-1]
class Question2

    #     def element_at(arr,index)
    #         if index < 0 || index > arr.length
    #             return "invalid input"
    #         else
    #             return arr[index]
    #         end
    #     end 





    # def inclusive_range(arr,start_pos,end_pos)
    #     if end_pos >= start_pos
    #         if end_pos > arr.length
    #             return "end pos out of bonds"
    #         else
    #             if start_pos < 0 
    #                 return "start pos less than zero"
    #             else
    #                 return arr.slice(start_pos,(end_pos-start_pos)+1)
    #             end
    #         end
    #     else 
    #         return "start pos should be less than or equal to end pos"
    #     end
    # end

    # puts inclusive_range(arr, 1,8)

    # 

    # def non_inclusive_range(arr,start_pos,end_pos)
    #     if start_pos < end_pos 
    #         if end_pos > arr.length
    #             return "end pos out of bonds"
    #         else
    #             if start_pos < 0 
    #                 return "start pos less than zero"
    #             else
    #                 return arr.slice(start_pos,(end_pos-start_pos))
    #             end
    #         end
    #     else 
    #         return "start pos should be less than end pos"
    #     end
    # end

    # puts non_inclusive_range(arr, 0,1)


    def start_and_end(arr,start_pos,len)
        if start_pos < 0 || start_pos > arr.length
            return "invalid start position"
        else 
            if len <= 0 || len > arr.length
                return "improper length"
            else
                if start_pos + len > arr.length
                    return "sorry out of length try with less length"
                else
                    return arr[start_pos,len]
                end
            end
        end
    end
end

# puts start_and_end(arr,7,0)
que2 = Question2.new()
# puts que2.element_at(arr,4)
# puts que2.inclusive_range(arr, 1,8)
# puts que2.non_inclusive_range(arr, 1,8)
puts que2.start_and_end(arr,3,5)