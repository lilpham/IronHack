color_array = ["indigo", "teal", "lilac", "periwinkle", "teal", "black", "baby bluet", "teal"]

def count_colors(color, color_array)
	color_array.each do |the_color|
		if the_color == color
			count += 1
		end
	end

	count
end




p color_array

count_colors("indigo", color_array) == 1
count_colors("periwinkle", color_array) == 2
count_colors("teal", color_array) == 3

count_colors("green", color_array) == 0
count_colors("navy blue", color_array) == 0

