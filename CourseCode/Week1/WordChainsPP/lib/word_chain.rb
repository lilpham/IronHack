class WordChain
    def initialize(dictionary)
        @dictionary = dictionary
    end

    def split_word(word)
    	word.split("").map { |letter|
    		letter
    	}
    end

    def next_letter(letter)
    	(letter.ord + 1).chr
    end

    def find_chain(word1, word2)
   #  	while
		 # if @dictionary.exists?(word1)
		 # 	p word1
		 # end
		 # if @dictionary.exists?(word2)
		 # 	p word2
		 # end
		 word1_array = split_word(word1)
		 word2_array = split_word(word2)

		 is_a_match = true
		 
		 while(is_a_match)
		 	index = 0
			 word1_array.each { |letter|
			 	if letter == word2_array[index]
			 		puts 'LETTER match'
			 	else
			 		word1_copy = word1
			 		word1_copy[index] = next_letter(letter)
			 		p "word1 copy"
			 		if @dictionary.exists?(word1_copy)
			 			puts word1_copy
			 			p "word exists"
			 			if word1_copy == word2
			 				puts 'WORD match'
			 				is_a_match == false
			 			end
			 		else
			 			puts "not a word"
			 		end
			 	end
			 	p index
			 	index+=1
			 }
		end

    end
end