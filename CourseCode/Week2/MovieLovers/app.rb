require "sinatra"
require "sinatra/reloader" if development?
require "imdb"

require_relative "lib/Search.rb"
get "/" do 
	erb :home
end 

get '/search' do
	erb :search
end 

post '/submit_search' do
	@movies = the_search.movies 
	movie = Imdb::Search.new(params[:movie_title])
	@movies.push(movie)

	redirect to ('/search_results')
end 

get "/search_results" do 
	@movies = the_search.movies
	the_search = Imdb::Search.new(@movies)

	erb :results
end 
