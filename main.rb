class Main

    def element_at(arr, index)
        if arr.length <= index || index < 0 || arr.length < 0
            return -1
        end
        return arr[index]
    end
end 

obj = Main.new
puts obj.element_at([9, 5, 1, 2, 3, 4, 0,-1], 3)