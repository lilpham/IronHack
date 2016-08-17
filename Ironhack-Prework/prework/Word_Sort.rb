Word_Sort.rb

def sort(sentence)	
		
	sentence.gsub!(/[!]/, " ").split.sort {|a, b| a.downcase <=> b.downcase}

	end

sort("Have a magical day!")