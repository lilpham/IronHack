#class Piece 

class Piece 
	attr_accessor :x, :y, :color 

	def move(x, y, color)
		@x = x 
		@y = y
		@color = color
	end
end
