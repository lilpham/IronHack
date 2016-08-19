#bishop.rb

class Bishop 
	attr_accessor :x, :y, :color
	def initialize(x, y, color)
		@x = x 
		@y = y
		@color = color
	end 

	def can_move?(final_x, final_y)
		x_diff = (final_x - @x)
		y_diff = (final_y - @y)

		if x_diff.abs == y_diff.abs 
			true
		else
			false
		end
	end 
end 
