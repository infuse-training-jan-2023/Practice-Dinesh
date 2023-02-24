require 'json'

def get_json_data()
	json_file = File.read(ENV["file"])
	data = JSON.parse(json_file)
    return data
end


num_arr = ARGV
num = num_arr[0].to_i

count=0
if (num==0)
	puts "0 is not prime"
else
	
	i=2
	while(i<num)
		if (num%i==0)
			count+=1
		end
		i+=1
	end
	
end
	if count>1
		puts "#{num} is not a prime number"
	else
		puts "#{num} is a prime number"
	end


puts (get_json_data())