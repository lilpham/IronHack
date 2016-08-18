class Game_of_Rooms 
	def initialize
		@direction = {:N => "north", :S => "south", :W => "west", :E => "east"}
		@command = {
			:FLEE => "flee", :PET => "pet", :SUNBATHE => "sunbathe"
		}
	end

	def start
		puts
		puts "Oh, hello there! Do you ever wish you could meet Justin Bieber?"
		puts 
		puts "==>Enter [Y]es or [N]o"
		puts
		answer = gets.chomp.upcase
		if answer == "y" 
			puts "Lowkey, though... me too. LEGGO. WE GON' FIND HIM"
		else answer == "n"
			puts "Lowkey, though. You know you want to."
			puts "Sorry, but you don't have a choice. Let's go! WE GON' FIND JB"
			puts "Where do you want to start first?"
			puts "[LA], [Nashville], [Bora Bora], [Sydney], or [Canada]?"
		answer = gets.chomp.upcase
			if answer == "LA"

		end 
	end
end



class Location (description)
	def initialize 
		com = @command
		dir = @direction 
	end 

	def LA 
		puts "Welcome to LA where the sun is always shining and the weather is ridiculously perfect!"
		puts "Let's go to JB's mansion!"
		puts " - - - - - - "
		puts "OH, LOOK. WE'RE ALREADY HERE. (I have mad teleportation skills)."
		puts "Which way do you want to go?"
		puts "[N]orth, [S]outh, [E]ast, or [W]est?" 
		
	end

# 	def add_space(name)

# 	end
# end

# class LA < Location

# end

# class Nashville < Spaces
# end

player = Game_of_Rooms.new
player.start 

# player_journey = Location.new 

# player_journey.add_space(LA)

#Congrats, you're now a celebrity stalker in the least creepiest way possible. 
