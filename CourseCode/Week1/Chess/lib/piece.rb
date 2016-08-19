#class Piece 

class Piece 
	attr_accessor :x, :y, :color 

	def position(x, y, color)
		@x = x 
		@y = y
		@color = color
		
		x_diff = (final_x - @x)
		y_diff = (final_y - @y)
	end
end
