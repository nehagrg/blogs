class Speech < ActiveRecord::Base
	has_many :comments
	belongs_to :Employee
end
