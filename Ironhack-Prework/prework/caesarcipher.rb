def solve_cipher(input, shift)

	letter_array = input.split("")
	new_array = []
	letter_array.each do |x|
	
	if x.ord == 32
		new_array << x.ord
	elsif x.downcase.ord + shift >= 97 && x.downcase.ord + shift <= 122
		new_array << (x.ord + shift)
	else 
		new_array << (x.ord + shift + 26)
	end
	end
	final_array = []
	new_array.each do |x|
		final_array << x.chr
	end
	
	p final_array.join
	
end

solve_cipher("p| uhdo qdph lv grqdog gxfn", -3)


