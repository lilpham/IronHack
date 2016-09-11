class ProductsController < ApplicationController
	def home
		@products = Product.all
		@user = User.find_by(params[:user_id])
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

	def show
		@user = User.find_by(params[:user_id])
		@products = Product.find_by(id: params[:id])
	end
end
