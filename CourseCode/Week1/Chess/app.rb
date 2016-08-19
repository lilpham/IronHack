#app.rb

require_relative("lib/rook.rb")
require_relative("lib/king.rb")
require_relative("lib/knight.rb")
# require_relative("lib/piece.rb")

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

p black_knight_right.can_move?(8,6)
p black_knight_left.can_move?(1, 6)
p white_knight_right.can_move?(6, 3)
p white_knight_left.can_move?(1, 3)

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
