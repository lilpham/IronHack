require("imdb")

list_of_movies = []
array_of_movies = []

File.open("movies.txt") do |f| #gets each line from movies.txt and 
  f.each_line do |x|
  	list_of_movies.push(x) #we push each movie into array
  end
end


	list_of_movies.each do |title|
		array_of_stars = []
		puts "Running search for: #{title}..."
		the_search = Imdb::Search.new(title)
		puts "Found!"
		first_result = the_search.movies[0]

		rating = first_result.rating.to_i
		while rating > 0
			array_of_stars.push("#|")
			rating -=1
		end
		array_of_movies.push({:title => first_result.title, :rating => array_of_stars})
		puts
	end

	row = 9 # because we start at array[0] and end at array[9] for 10 stars
	num_movies = 0

#start printing the graph
	while row >= 0
		print "|"
		while num_movies < array_of_movies.length
			
			if array_of_movies[num_movies][:rating][row] == nil
				print "-|"
			else
				print array_of_movies[num_movies][:rating][row]
			end	
			
			num_movies+=1
		end
		puts
		num_movies = 0
		row -=1
	end

#print the line at the bottom, length of line matches number of movies
	print "-"
	array_of_movies.each do
	print "--"
	end
	puts
#print the number for each movie
	movienumber=1
	print "|"
	array_of_movies.each do 
		print "#{movienumber}|"
		movienumber+=1
	end
	puts
	puts
	movienumber=1
	array_of_movies.each do |x|
		puts "#{movienumber}. #{x[:title]}"
		movienumber+=1
end

puts
puts "Created by Lillian and Alain, a 2nd time."