#knight.rb
class Knight 
	attr_accessor :x, :y, :color
	def initialize(x, y, color)
		@x = x 
		@y = y
		@color = color
	end 
		
	def can_move?(final_x, final_y)
		x_diff = (final_x - @x)
		y_diff = (final_y - @y)

		if x_diff == 1 && y_diff == 2 || x_diff == 2 && y_diff == 1
			true 
		elsif x_diff ==  -1 && y_diff == 2 || x_diff == 1 && y_diff == -2
			true
		elsif x_diff ==  -1 && y_diff == -2 || x_diff == -2 && y_diff == -1
			true
		elsif x_diff ==  2 && y_diff == -1 || x_diff == -2 && y_diff == -1
			true
		else
			false
		end
	end 
end 
