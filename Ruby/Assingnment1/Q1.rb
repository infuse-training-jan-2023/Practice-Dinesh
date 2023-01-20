data = "019-00.00-00.00"
class Question1

    def serial_average(a)
        seperated_data = a.split("-")
        last_value = (seperated_data[1].to_f + seperated_data[2].to_f)/2
        last_value_check = last_value.round(2).to_s.split(".")
        if last_value_check[0].length < 2
            last_value_check[0] = "0" + last_value_check[0]
        end
        if last_value_check[1].length < 2
            last_value_check[1] = "0" + last_value_check[1]
        end
        return "#{seperated_data[0]}-#{last_value_check[0]}.#{last_value_check[1]}"
    end
end
Que_one = Question1.new()

puts Que_one.serial_average(data)