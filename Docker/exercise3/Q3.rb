data = {543121 => 100, 543545.2 => 34, 94652 => 324,89472 => 2344, 234545 => 345, 235943 => 674}

class Question3
    def hashses (data)
        data.each do |key,value|
            # puts "#{key} => #{data[key]}"
            if (key.is_a?Integer)
                if (key.even?)
                    data.delete(key)
                end
            else
                data.delete(key)
            end
        end
        return data
    end
end

que3 = Question3.new()
puts que3.hashses(data)