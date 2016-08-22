class StringCalculator 
	def add (n = "")
		number = n.gsub(/[^0-9A-Za-z]/, '')
		number[0].to_i + number[1].to_i
	end
end