#king.rb

class King 
	def initialize(x, y, color)
		@x = x 
		@y = y
		@color = color
	end 

	def can_move?(final_x, final_y)
		if (final_x - @x) == 1 && final_y == @y || (final_x - @x) == -1 && final_y == @y
			true
		elsif final_x == @x && (final_y - @y) == 1 || final_x == @x && (final_y - @y) == -1
			true 
		elsif (final_x - @x) == -1 && (final_y - @y) == -1 || (final_x - @x) == 1 && (final_y - @y) == 1
			true 
		else
			false
		end
	end
end
