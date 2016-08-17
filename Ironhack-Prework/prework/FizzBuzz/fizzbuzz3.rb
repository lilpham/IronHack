

(1..100).each do |n|
	result = ""
	if n % 3 == 0 && n % 5 == 0
		result << "Fizzbuzz"
	if n % 3 == 0
		result << "Fizz"
	if n % 5 == 0
		result << "Buzz"
	if n == 1
		result << "Bang"
	else 
		puts n 
	end 
end 