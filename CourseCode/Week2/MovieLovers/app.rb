require "sinatra"
require "sinatra/reloader" if development?
require "imdb"

require_relative("lib/Search.rb")

the_movie = Movie_Search.new

get "/" do 
	erb :home
end 

get '/search' do
	erb :search
end 

post '/search_results' do
	@movies = the_movie.search_movie(params[:movie_title])
	@correct_movie = @movies.sample	
	erb :results
end 

