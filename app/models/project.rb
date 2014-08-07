class Project < ActiveRecord::Base
	validates :number, :project, :points, :name, :email, presence: true
	validates_format_of :email, :with => /@/
end
