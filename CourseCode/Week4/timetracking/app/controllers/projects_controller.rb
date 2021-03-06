class ProjectsController < ApplicationController
	def index
		@projects = Project.order(created_at: :desc).limit(10)
		
		render "index"
	end 

	def show
		@project = Project.find_by(id: params[:id])
		unless @project
			render "no_project_found"
		end
	end

	def new
		@project = Project.new 
	end 

	def create
		@project = Project.new(
			name: params[:project][:name],
			description: params[:project][:description])

		if @project.save
			flash[:notice] = "Project successfully created!"
			redirect_to("/projects/#{@project.id}")
		else
			flash[:alert] = "Please fill text fields with characters"
			render "new"
		end
	end
end
