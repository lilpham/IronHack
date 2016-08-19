#blackpawn.rb

class Black_Pawn
	def initialize(x, y, color)
		@x = x 
		@y = y
		@color = color
	end 

	def first_move?(final_x, final_y)
		x_diff = (final_x - @x)
		y_diff = (final_y - @y)
		
		if x_diff == 0 && y_diff == -2
			true
		elsif x_diff == 0 && y_diff == -1
			true
		else
			false
		end
	end

	def can_move?(final_x, final_y)
		x_diff = (final_x - @x)
		y_diff = (final_y - @y)

		if x_diff == 0 && y_diff == -1
			true
		else
			false
		end
	end
end