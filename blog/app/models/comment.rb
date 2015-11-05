class Comment < ActiveRecord::Base
	belongs_to :Employee
	belongs_to :Speech
end
