class PasswordChecker

	def check_length(email,password)
		if password.length < 7
		return 
			false
		else 
			true
		end
	end

	def check_upcase(email,password)

		if ( "A".."Z" ).each {|letter| 
			!password.include?(letter)}		
		return
			false
		else 
			true
		end
	end

	def check_downcase(email,password)
		
		if ( "a".."z").each {|letter|
			!password.include?(letter)}
		return 
			false
		else
			true
		end
	end

	def check_number(email,password)

		if	("0".."9").each {|number|
			!password.include?(number)}
		return 
			false
		else 
			true	
		end
	end

	def check_symbol(email,password)

		if ("!".."~").each {|symbol|
			!password.include?(symbol)}
		return 
			false
		else 
			true
		end
	end

	def check_email_password(email,password)

		if password.include?("chris") && password.include?("@example")
		return
			false
		else
			true
		end
	end

	def check_password(email,password)
		check_length("","") &&
		check_upcase("","") &&
		check_downcase("","") &&
		check_number("","") &&
		check_symbol("","") &&
		check_email_password("","") &&
	end
end