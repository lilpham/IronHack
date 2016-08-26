require "sinatra"
require "sinatra/reloader" if development?
require "imdb"

require_relative("lib/Search.rb")

the_thing = Movie_Search.new


get "/" do 
	erb :home
end 

get '/search' do
	erb :search
end 


post '/search_results' do
	@movies = the_thing.search_movie(params[:movie_title])	
	erb :results
end 
