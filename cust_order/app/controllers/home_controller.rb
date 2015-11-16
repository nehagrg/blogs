class HomeController < ApplicationController
	def index
		@c=Customer.first
		@o = @c.orders.first
	end	
end
