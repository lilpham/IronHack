class ContactsController < ApplicationController
	def index
		@contacts = Contact.order("name ASC")

	end 

	def new
		render "new"
	end

	def create
		contact = Contact.new(
	      :name => params[:contact][:name],
	      :address => params[:contact][:address],
	      :phone => params[:contact][:phone],
	      :email => params[:contact][:email])
		
		contact.save

		redirect_to("/contacts")
	end

	def show
		@contact = Contact.find_by(id: params[:id])
		render "show"
	end 

end
