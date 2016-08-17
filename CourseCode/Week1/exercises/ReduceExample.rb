numbers_array = [ 23, 5, 10 , 2, 27, 33, 72]

# 172 

total = 0 

numbers_array.each do |the_number|
	total += the_number
	#total = total + the_number 
end 

#172
puts total 

total = numbers_array.reduce(0) do |sum, the_number|
	puts "Current Sum: #{sum}"
	puts "Current Number: #{the_number}"
	puts "New Result: #{sum + the_number}"
	puts "-------------------------------------"
	sum + the_number
end

#172
puts total