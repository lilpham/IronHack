#queen.rb

class Queen 
	def initialize(x, y, color)
		@x = x 
		@y = y
		@color = color
	end 

	def can_move?(final_x, final_y)
		x_diff = (final_x - @x)
		y_diff = (final_y - @y)

		if final_x == @x || final_y == @y
			true
		elsif x_diff == 1 && final_y == @y || x_diff == -1 && final_y == @y
			true
		elsif final_x == @x && y_diff == 1 || final_x == @x && y_diff == -1
			true 
		elsif x_diff == -1 && y_diff == -1 || x_diff == 1 && y_diff == 1
			true 
		elsif x_diff == 1 && y_diff == 2 || x_diff == 2 && y_diff == 1
			true 
		elsif x_diff ==  -1 && y_diff == 2 || x_diff == 1 && y_diff == -2
			true
		elsif x_diff ==  -1 && y_diff == -2 || x_diff == -2 && y_diff == -1
			true
		elsif x_diff ==  2 && y_diff == -1 || x_diff == -2 && y_diff == -1
			true
		elsif x_diff.abs == y_diff.abs 
			true	
		else
			false
		end
	end
end