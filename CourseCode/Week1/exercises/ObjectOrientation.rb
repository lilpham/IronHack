class Car
	def initialize(name, speed, sound)
		@name = name
		@speed = speed	
		@sound = sound

		@cities_array = []
	end

	def drive_away
	puts "The #{@name} goes #{@sound} at the high speed of #{@speed} mph... beast."
	end

	def travel_to(city_name)
		@cities_array.push(city_name)
	end 

	def cities_visited
		@cities_array	
	end

end

the_flash = Car.new("Flash", 178, "Berrghhhh")
the_flash.drive_away
the_flash.travel_to("Los Angeles")
the_flash.travel_to("Bali")

p the_flash.cities_visited

the_mater = Car.new("Mater", 40, "Cah-clunk")
the_mater.drive_away
the_mater.travel_to("Radiator Springs")
the_mater.travel_to("Oxnard")
the_mater.travel_to("Nashville")

p the_mater.cities_visited