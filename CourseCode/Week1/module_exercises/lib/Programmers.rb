#Programmers.rb

class Programmers 
	include Caffeine_Consumer 
	include Payable 

	def program 
		do_wonderful_things_with_computers
		consume_caffeine
		receive_salary
	end

	def do_wonderful_things_with_computers
		puts "I'm a computer wiz and I do weird things that normal people don't understand!"
	end 
end 