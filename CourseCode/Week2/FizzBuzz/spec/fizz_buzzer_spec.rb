require_relative("../lib/FizzBuzzer.rb")

RSpec.describe FizzBuzzer do 
	let (:the_fizz_buzzer) {FizzBuzzer.new}

	describe "fizzbuzz method"
		it "is not a multiple of 3; thus, we return the number itself" do 
			expect(the_fizz_buzzer.fizzbuzz(7)).to eq(7)

			expect(the_fizz_buzzer.fizzbuzz(11)).to eq(11)
		end 

		it "is a mutliple of 3; thus, we return 'Fizz'" do 
			expect(the_fizz_buzzer.fizzbuzz(9)).to eq("Fizz")
			expect(the_fizz_buzzer.fizzbuzz(12)).to eq("Fizz")
		end

		it "is a multiple of 5; thus, we return 'Buzz'" do 
			expect(the_fizz_buzzer.fizzbuzz(10)).to eq("Buzz")
			expect(the_fizz_buzzer.fizzbuzz(25)).to eq("Buzz")
		end

		it "is a multiple of 3 and 5; thus, we return 'FizzBuzz'" do
			expect(the_fizz_buzzer.fizzbuzz(15)).to eq("FizzBuzz")
			expect(the_fizz_buzzer.fizzbuzz(30)).to eq("FizzBuzz")
		end

end
