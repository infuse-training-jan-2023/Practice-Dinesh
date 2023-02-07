arr = ["cricket","TT","Football","Hockey"]

class Question4
    def skip_sports(arr, no)
        if no<0 
            return "no should not be less than 0"
        end
        if no >= arr.length
            return "no length cannot be greater"
        end
        hash = {}
        for index in 0...arr.length
            if index >= no
                hash[index] = arr[index]
            end
        end
        return hash
    end
end

que4 = Question4.new()
puts que4.skip_sports(arr,2)