require_relative("../lib/Search.rb")

RSpec.describe Search do 
	before(:each) do 
		the_search = Imdb::Search.new
		@movies = the_search.movies 
	end 

	it "returns nil if a movie in the array does not have a poster" do 
		expect(the_search.print_movies).to eq[false]
	end 

end