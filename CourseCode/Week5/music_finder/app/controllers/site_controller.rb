class SiteController < ApplicationController
	def home
		@concerts_today = Concert.where(
			date: Time.now..Time.now.end_of_day)

		@concerts_month = Concert.where(
			date: Time.now.end_of_day..Time.now.end_of_month)

		@concerts = Concert.where(
			price:
			)
	end

end
