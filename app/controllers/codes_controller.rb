class CodesController < ApplicationController
	def new
	  @projects = Project.all
	end
end
