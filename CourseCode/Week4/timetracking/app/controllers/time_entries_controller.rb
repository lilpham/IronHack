class TimeEntriesController < ApplicationController
	def index

		# Input
		# - project id under params[:id]
		@project = Project.find(params[:project_id])
		# Output
		# -all entries for the project
		@time_entries =  @project.time_entries.where(
			date: Time.now.beginning_of_month..Time.now.end_of_month
			)
	end
end
