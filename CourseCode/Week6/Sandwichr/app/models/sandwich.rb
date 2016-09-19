class Sandwich < ApplicationRecord
	def index
		sandwiches = Sandwich.all
		render json: sandwiches
	end

	def create
	end
end
