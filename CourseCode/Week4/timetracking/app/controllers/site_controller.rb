class SiteController < ApplicationController
	def home
		render "home"  #-->app/view/site/home.html.erb
	end

	def contact
		render "contact"
	end
end
