class SitesController < ApplicationController
	def home
		@concerts = Concert.all
	end
end
