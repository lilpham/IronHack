#app.rb

require_relative("lib/rook.rb")
require_relative("lib/king.rb")

black_rook_right = Rook.new(7, 6, "black")
black_rook_left = Rook.new(1, 8, "black")

white_rook_right = Rook.new(8, 1, "white")
white_rook_left = Rook.new(4, 3, "white")

puts "Valid Rook movements"
puts " - - - - - - - - - - "

p black_rook_left.can_move?(1, 5) == true
p black_rook_left.can_move?(5, 8) == true

p white_rook_right.can_move?(8, 3) == true
p white_rook_right.can_move?(2, 1) == true

puts "Invalid Rook movements"
puts " - - - - - - - - - - "

p black_rook_left.can_move?(2, 7) == false
p black_rook_left.can_move?(2, 5) == false

p white_rook_right.can_move?(3, 5) == false
p white_rook_right.can_move?(5, 6) == false
