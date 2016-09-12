class ConcertsController < ApplicationController
	def index
		@concert = Concert.where(date: Time.today)
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
			redirect_to('/concert/#{@concert.id}')
		else
			render "new"
		end
	end 
end
