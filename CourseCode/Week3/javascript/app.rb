require_relative("lib/color_counter.rb")

color_array = ["indigo", "teal", "lilac", "periwinkle", "teal", "black", "baby blue", "teal", "periwinkle"]

p color_array

the_counting_machine = ColorCounter.new

the_counting_machine.count_colors("indigo", color_array) == 1
the_counting_machine.count_colors("periwinkle", color_array) == 2
the_counting_machine.count_colors("teal", color_array) == 3

the_counting_machine.count_colors("green", color_array) == 0
the_counting_machine.count_colors("navy blue", color_array) == 0

caps_colors = color_array.map do |the_color| 
	the_color.upcase
end 

p caps_colors