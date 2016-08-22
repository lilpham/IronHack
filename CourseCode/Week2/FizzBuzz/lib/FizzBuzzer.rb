class FizzBuzzer
	def fizzbuzz(n)
		if n % 3 == 0 && n % 5 == 0
			p "FizzBuzz"
		elsif n % 5 == 0
			p "Buzz"
		elsif n % 3 == 0 
			p "Fizz"	
		else 
			n
		end
	end 
end 