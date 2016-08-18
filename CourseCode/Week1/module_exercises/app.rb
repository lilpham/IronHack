#app.rb


require_relative("lib/Caffeine_Consumer.rb")
require_relative("lib/Payable.rb")
require_relative("lib/Programmers.rb")
require_relative("lib/Designer.rb")


lilly = Designer.new 
nizar = Programmers.new

puts "Designers:"
lilly.design_things
puts " - - - - - - - - - "

puts "Programmers:"
nizar.program
