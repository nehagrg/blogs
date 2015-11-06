class Employee < ActiveRecord::Base
	has_many :comments
	has_many :speeches
	
end
