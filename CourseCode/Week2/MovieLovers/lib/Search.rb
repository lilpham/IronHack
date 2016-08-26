require "imdb"

class Movie_Search 
	def initialize
		@movies = []
	end

	def search_movie(movie)
		the_search = Imdb::Search.new(movie)
		@movies = the_search.movies.take(18)
	end

	def print_movies
	array_of_movies = @movies.take(18).select do |movie|
			movie.poster != nil 
		 
		end 
		array_of_movies.take[9]
	end 
	
end
