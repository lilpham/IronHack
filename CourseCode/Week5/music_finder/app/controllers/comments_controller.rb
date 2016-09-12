class CommentsController < ApplicationController
	def index
	end 

	def new
		@concert = Concert.find(params[:concert_id])
		@comment = @concert.comments.new
	end 

	def create
		@concert = Concert.find(params[:concert_id])
		@comment = @concert.comments.new(
			name: params[:comment][:name],
			date: params[:comment][:date],
			comment: params[:comment][:comment]
			)
		@comment.save

		redirect_to("/concerts/#{@concert.id}")
	end 
end
