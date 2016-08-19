
class Chess_Board
	def initialize(pieces)
		@pieces = []
    end

    def
   		board_can_move?#(x,y)(final_x, final_y)

    end

    def add_piece(pieces)
    	x_pos = pieces.x 
    	y_pos = pieces.y 

    	@pieces.push(x_pos)
    	@pieces.push(y_pos)

    end
end