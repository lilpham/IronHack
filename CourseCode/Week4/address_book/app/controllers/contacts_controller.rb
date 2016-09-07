class ContactsController < ApplicationController
	def index
		render "index"
	end 

	def new
		render "new"
	end

	def create
		contact = Contact.new
		:name => params[:contact][:name],
		:address => params[:contact][:address],
        :phone => params[:contact][:phone],
        :email => params[:contact][:email])
		
		contact.save
		
		render(:text => contact.attributes)
	end
end
