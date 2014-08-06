class ProjectsController < ApplicationController
	def new
	end
	def create
		@project = Project.new(project_params)
	 
		@project.save
		redirect_to @project
	end
	def show
	  @project = Project.find(params[:id])
	end

	private
	  def project_params
	    params.require(:project).permit(:project, :number, :name, :email, :description, :points)
	  end
end
