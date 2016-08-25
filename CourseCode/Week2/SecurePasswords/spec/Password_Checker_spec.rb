require_relative("../lib/Password_Checker.rb")

RSpec.describe PasswordChecker  do
	describe "check_password" do 

		it "returns false for passwords less than 7 characters" do 
		the_checker = PasswordChecker.new 

		result = the_checker.check_length("Chris@exmaple.com", "a_Ss") 
		expect(result).to eq(false)
		end

		it "returns false for passwords that do not contain an uppercase letter" do
		the_checker = PasswordChecker.new

		expect(the_checker.check_upcase("Chris@example.com","hello12")).to eq(false)
		end

		it "returns false for passwords that do not contain a lowercase letter" do
		the_checker = PasswordChecker.new

		expect(the_checker.check_downcase("Chris@example.com","HELLO12")).to eq(false)
		end

		it "returns false for passwords that do not contain numbers" do
		the_checker = PasswordChecker.new

		expect(the_checker.check_number("Chris@example.com","a_SslkK")).to eq(false)
		end

		it "returns false for passwords that contain symbols" do
		the_checker = PasswordChecker.new

		expect(the_checker.check_symbol("Chris@example.com","aLSs4uL")).to eq(false)
		end

		it "returns false if the password contains the name or the domain of the email." do
		the_checker = PasswordChecker.new

		expect(the_checker.check_email_password("Chris@example.com","Chrisa_Ss4u@example")).to eq(false)
		end

		it "returns true for passwords that meet all criteria" do
		the_checker = PasswordChecker.new 

		expect(the_checker.check_password("Chris@example.com","a_Ss4u@")).to eq(true)
		end
	end
end