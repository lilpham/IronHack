class ProductsController < ApplicationController
	def home
		@products = Product.all
	end 
	
	def new
		@user = User.find(params[:user_id])
		@product = @user.products.new 	
	end 

	def create
		@user = User.find(params[:user_id])
		@product = @user.products.new(
			title: params[:products][:title],
			description: params[:products][:description],
			deadline: params[:products][:deadline]
			)	

	end 
end
