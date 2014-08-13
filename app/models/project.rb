class Project < ActiveRecord::Base

	has_many :codes
	
	validates :number, :project, :points, :name, :email, presence: true
	validates_format_of :email, :with => /@/
end
