class Employee < ActiveRecord::Base
	validates :name,presence: {strict: true}
end
