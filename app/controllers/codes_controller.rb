class CodesController < ApplicationController
	def new
	  @projects = Project.all
	  @project = Project.find(params[:project_id])
	end

	def create
		@number_of_codes = params[:code][:quantity].to_i
		@project = params[:code][:quantity]
		expiry = params[:code][:expiry]

		@number_of_codes.times do |i|
		  @code = generate_code

		  Code.create(:project => '1', :expiry => expiry, :code => code)
		end
		
		
	end

	private

	def generate_code
		rand(36**8).to_s(36)
	end
end
