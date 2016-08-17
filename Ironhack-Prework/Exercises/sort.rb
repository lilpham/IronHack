def sort(sentence)	
		
	print sentence.gsub!(/[!]/, " ").split.sort_by { |sentence| sentence.downcase }
	
	
end

sort("Have a magical day!")
