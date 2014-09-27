class CodesController < ApplicationController
	def new
	  @projects = Project.all
	  @project_id = params[:project_id]
	end

	def create
		@project = Project.find(params[:project])

		@number_of_codes = params[:code][:quantity].to_i
		expiry = params[:code][:expiry]

		@number_of_codes.times do |i|
		  @project.add_code(expiry)
		end
	end
end
