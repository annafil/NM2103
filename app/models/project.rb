class Project < ActiveRecord::Base

	has_many :codes
	accepts_nested_attributes_for :codes

	validates :number, :project, :points, :name, :email, presence: true
	validates_format_of :email, :with => /@/

	def add_code(expiry)
		codes << Code.create(expiry: expiry, code: Code.generate_code)
	end

end
