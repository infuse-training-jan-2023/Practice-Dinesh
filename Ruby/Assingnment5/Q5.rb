require 'json'


class Question5

    def rewrite_json_data()
        jsondata = {"name": "Nicole Smith","age": 25,"salary": 25552.67}
        
        File.write('./input.json', JSON.dump(jsondata))  
        file = File.read('./input.json')
        if(file)
            rcvd_data = JSON.parse(file)

            f_name = rcvd_data["name"].split()[0]
            l_name = rcvd_data["name"].split()[1]
    
            rcvd_data.delete("name")
            rcvd_data["f_name"]=f_name
            rcvd_data["l_name"]=l_name
    
            str="Dinesh_#{Time.now.utc.strftime("%Y-%m-%d %H-%M-%S")}.json"
            if File.write(str,JSON.dump(jsondata)) 
                return "json file created" 
            else
                return "file not created"
            end
        else
            return "file not found"
        end
    end
end

que5 = Question5.new()
puts que5.rewrite_json_data()







