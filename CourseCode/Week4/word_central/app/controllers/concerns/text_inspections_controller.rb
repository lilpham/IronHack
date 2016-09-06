class TextInspectionsController < ApplicationController
	def new 
		render "new"
	end 

	def create
		@text = params[:text_inspection][:user_text].inspect 
		@words = @text.split(" ")
		@word_count = @text.split(" ").length

		@count = @word_count/275

		frequencies = Hash.new(0)
		@words.each do |x|
			frequencies[x] += 1
		end 

		frequencies = frequencies.sort_by{|a, b| b}
		frequencies.reverse!

		frequencies.each do |word, value|
			@frequency = word + value.to_s
		end


		render "results"
	end

end