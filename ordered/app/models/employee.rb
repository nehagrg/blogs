class Employee < ActiveRecord::Base
	validates :name,presence: {strict: true}
	before_validation :normalize_name, on: :create
		
	after_initialize do |i|
		puts"initialize an object"
	end
	def normalize_name
		self.name=self.name.capitalize
	end	
end
