class ColorCounter
	def count_colors(color, color_array)
		count = 0

		color_array.each do |the_color|
			if the_color == color
				count += 1
			end
		end

		count
	end
end