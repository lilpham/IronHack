class ConcertsController < ApplicationController
	def index
		@concerts_today = Concert.where(
			date: Time.now..Time.now.end_of_day)

		@concerts_month = Concert.where(
			date: Time.now.end_of_day..Time.now.end_of_month)
	end 

	def show
		@concert = Concert.find(params[:id])
	end

	def new
		@concert = Concert.new
	end 

	def create
		@concert = Concert.new(
			artist: params[:concert][:artist],
			venue: params[:concert][:venue],
			city: params[:concert][:city],
			date: params[:concert][:date],
			price: params[:concert][:price],
			description: params[:concert][:description]
			)
		if @concert.save
			redirect_to('/concerts/#{@concert.id}')
		else
			render "new"
		end
	end 
end
