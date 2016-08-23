require "artii"
require "sinatra"


get "/ascii/?:word?/?:font?" do 
	@word = params[:word]
	@ascii_font = params[:font]

	the_ascifier = Artii::Base.new(:font => @ascii_font)

	@ascii_word = the_ascifier.asciify(@word)

	erb :ascii_word
end

# puts the_ascifier.asciify("Sad")