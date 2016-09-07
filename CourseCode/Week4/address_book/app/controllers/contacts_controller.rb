class ContactsController < ApplicationController
	def index
		@contacts = Contact.order("name ASC")
	end 

	def new
		render "new"
	end

	def create
		contact = Contact.new(
	      :name => params[:contact][:name].downcase.capitalize,
	      :address => params[:contact][:address],
	      :phone => params[:contact][:phone],
	      :email => params[:contact][:email])
		
		contact.save

		redirect_to("/contacts")
	end

	def show
		@contacts = Contact.find_by(id: params[:id])
		render "show"
	end 

end
