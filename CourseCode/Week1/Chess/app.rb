#app.rb

require_relative("lib/rook.rb")
require_relative("lib/king.rb")
# require_relative("lib/piece.rb")

black_rook_right = Rook.new(7, 6, "black")
black_rook_left = Rook.new(1, 8, "black")
white_rook_right = Rook.new(8, 1, "white")
white_rook_left = Rook.new(4, 3, "white")

black_king = King.new(5, 8, "black")
white_king = King.new(4, 1, "white")

puts "Valid Rook movements"
puts " - - - - - - - - - - "

p black_rook_left.can_move?(1, 5)
p black_rook_left.can_move?(5, 8) 
p white_rook_right.can_move?(8, 3) 
p white_rook_right.can_move?(2, 1) 

p black_king.can_move?(5, 7)
p white_king.can_move?(3, 1)

puts "Invalid Rook movements"
puts " - - - - - - - - - - "

p black_rook_left.can_move?(2, 7)
p black_rook_left.can_move?(2, 5) 
p white_rook_right.can_move?(3, 5)
p white_rook_right.can_move?(5, 6) 

p black_king.can_move?(5, 5)
p white_king.can_move?(3, 3)
