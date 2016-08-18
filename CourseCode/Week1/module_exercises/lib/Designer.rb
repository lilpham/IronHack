# Designer.rb

class Designer
	include Caffeine_Consumer
	include Payable

	def design_things
		select_typography 
		select_colors
		consume_caffeine
		receive_salary
	end

	def select_typography 
		puts "I create stuff"
	end 

	def select_colors
		puts "I love colors"
	end 
end