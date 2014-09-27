class Code < ActiveRecord::Base
	belongs_to :project

	def self.generate_code
		rand(36**8).to_s(36)
	end
end
