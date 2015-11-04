class HomeController < ApplicationController
	def index
		@employee=Employee.all
	end	
end
