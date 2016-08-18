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
		puts "I create stuff and hate comic sans"
	end 

	def select_colors
		puts "I love colors"
	end 
end