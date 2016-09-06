class TextInspectionsController < ApplicationController
	def new 
		render "new"
	end 

	def create
		@text = params[:text_inspection][:user_text].inspect 

		@word_count = @text.split("").length

		render "results"
	end
end