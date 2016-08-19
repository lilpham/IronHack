#app.rb

# require_relative("lib/piece.rb")
require_relative("lib/rook.rb")
require_relative("lib/king.rb")
require_relative("lib/knight.rb")
require_relative("lib/bishop.rb")
require_relative("lib/queen.rb")
require_relative("lib/whitepawn.rb")
require_relative("lib/blackpawn.rb")
require_relative("lib/chessboard.rb")


black_rook_right = Rook.new(7, 6, "black")
black_rook_left = Rook.new(1, 8, "black")
white_rook_right = Rook.new(8, 1, "white")
white_rook_left = Rook.new(4, 3, "white")

black_king = King.new(5, 8, "black")
white_king = King.new(4, 1, "white")

black_knight_right = Knight.new(7, 8, "black")
black_knight_left = Knight.new(2, 8, "black")
white_knight_right = Knight.new(7, 1, "white")
white_knight_left = Knight.new(2, 1, "white")

black_bishop_right = Bishop.new(6, 8, "black")
black_bishop_left = Bishop.new(3, 8, "black")
white_bishop_right = Bishop.new(6, 1, "white")
white_bishop_left = Bishop.new(3, 1, "white")

black_queen = Queen.new(4, 8, "black")
white_queen = Queen.new(5, 1, "white")

black_pawn1 = Black_Pawn.new(1, 7, "black")
black_pawn2 = Black_Pawn.new(2, 7, "black")
black_pawn3 = Black_Pawn.new(3, 7, "black")
black_pawn4 = Black_Pawn.new(4, 7, "black")
black_pawn5 = Black_Pawn.new(5, 7, "black")
black_pawn6 = Black_Pawn.new(6, 7, "black")
black_pawn7 = Black_Pawn.new(7, 7, "black")
black_pawn8 = Black_Pawn.new(8, 7, "black")

white_pawn1 = White_Pawn.new(1, 2, "white")
white_pawn2 = White_Pawn.new(2, 2, "white")
white_pawn3 = White_Pawn.new(3, 2, "white")
white_pawn4 = White_Pawn.new(4, 2, "white")
white_pawn5 = White_Pawn.new(5, 2, "white")
white_pawn6 = White_Pawn.new(6, 2, "white")
white_pawn7 = White_Pawn.new(7, 2, "white")
white_pawn8 = White_Pawn.new(8, 2, "white")


puts
puts "Valid Rook movements"
puts " - - - - - - - - - - "

p black_rook_left.can_move?(1, 5)
p black_rook_left.can_move?(5, 8) 
p white_rook_right.can_move?(8, 3) 
p white_rook_right.can_move?(2, 1) 

puts
puts "Valid King movements"
puts " - - - - - - - - - - "

p black_king.can_move?(5, 7)
p white_king.can_move?(3, 1)

puts
puts "Valid Knight movements"
puts " - - - - - - - - - - "

p black_knight_right.can_move?(8, 6)
p black_knight_left.can_move?(1, 6)
p white_knight_right.can_move?(6, 3)
p white_knight_left.can_move?(1, 3)

puts
puts "Valid Bishop movements"
puts " - - - - - - - - - - "

p black_bishop_right.can_move?(4, 6)
p black_bishop_left.can_move?(1, 6) 
p white_bishop_right.can_move?(2, 5)
p white_bishop_left.can_move?(5, 3)

puts
puts "Valid Queen movements"
puts " - - - - - - - - - - "

p black_queen.can_move?(3, 6)
p white_queen.can_move?(5, 4)

puts
puts "Valid Pawn movements"
puts " - - - - - - - - - - "

p white_pawn1.can_move?(1, 3)
p black_pawn1.can_move?(1, 6)
p white_pawn1.first_move?(1, 4)
p black_pawn1.first_move?(1, 5)

puts
puts "Invalid Rook movements"
puts " - - - - - - - - - - "

p black_rook_left.can_move?(2, 7)
p black_rook_left.can_move?(2, 5) 
p white_rook_right.can_move?(3, 5)
p white_rook_right.can_move?(5, 6) 

puts 
puts "Invalid King movements"
puts " - - - - - - - - - - "


p black_king.can_move?(5, 5)
p white_king.can_move?(3, 3)

puts
puts "Invalid Knight movements"
puts " - - - - - - - - - - "


p black_knight_right.can_move?(7, 6)
p black_knight_left.can_move?(4, 6)
p white_knight_right.can_move?(4, 4)
p white_knight_left.can_move?(1, 1)

puts
puts "Invalid Bishop movements"
puts " - - - - - - - - - - "

p black_bishop_right.can_move?(6, 5)
p black_bishop_left.can_move?(2, 6) 
p white_bishop_right.can_move?(6, 2)
p white_bishop_left.can_move?(1, 1)

puts
puts "Invalid Pawn movements"
puts " - - - - - - - - - - "

p white_pawn1.can_move?(2, 3)
p black_pawn1.can_move?(2, 5)
p white_pawn1.first_move?(1, 5)
p black_pawn1.first_move?(1, 3)
