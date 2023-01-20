require "base64"

data = "Originally, John Doe was a sham name used to indicate any plaintiff in an action of ejectment (a legal action to regain property) in civil court [ “ the string that will be base encoded ”]. Richard Roe was the counterpart, to indicate the defendant. These fake names were used in delicate legal matters, a practice that was abolished in English law in 1852."
str = "the string that will be base encoded"

class Question6
    def create_file(data)
        filedata = File.new("./Q6data.txt", "w+")
        if(filedata)
            filedata.puts data
            filedata.close
            return "file created successfully"
        else
            return "couldnt write in file"
        end
    end

    def encode_file(str)
        data = File.read('./Q6data.txt')
        if data
            data[str] = Base64.encode64(str).chomp()
            File.write("./Dinesh.txt", data)
            return "job done successfully"
        else
            return "File cannot be opened"
        end
    
    end
end

que6 = Question6.new()
puts que6.create_file(data)
puts que6.encode_file(data)