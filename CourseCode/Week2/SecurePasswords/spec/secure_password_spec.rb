require_relative("../lib/PasswordChecker.rb")

RSpec.describe PasswordChecker  do
	describe "check_password" do 

		it "returns true for passwords 7 characters or more" do 
		the_checker = PasswordChecker.new 

		result = the_checker.check_length("Chris@exmaple.com", "a_Ss4u@")

		expect(result).to eq(true)
		end

		it "returns true for passwords that contain letters" do
		the_checker = PasswordChecker.new

		expect(the_checker.check_upcase("Chris@example.com","a_Ss4u@")).to eq(true)
		end

		it "returns true for passwords that contain numbers" do
		the_checker = PasswordChecker.new

		expect(the_checker.check_number("Chris@example.com","a_Ss4u@")).to eq(true)
		end

		it "returns true for passwords that contain symbols" do
		the_checker = PasswordChecker.new

		expect(the_checker.check_symbol("Chris@example.com","a_Ss4u@")).to eq(true)
		end


		it "returns true if the password does not contain the name or the domain of the email." do
		the_checker = PasswordChecker.new

		expect(the_checker.check_email_password("Chris@example.com","Chrisa_Ss4u@example")).to eq(true)
		end

		it "returns true for passwords that meet all criteria" do
		the_checker = PasswordChecker.new 

		expect(the_checker.check_password("Chris@example.com","a_Ss4u@")).to eq(true)
		end
	end
end