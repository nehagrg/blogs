class HomeController < ApplicationController
	def index
	  @orders = Order.where(customer_id: '3')
	  @c= Customer.first
	  @o = @c.orders.first
	 # @c.name == @o.Customer.name
      @customer=Customer.all
	 # @customer=@order.Customer
	  #@order.customer = @customer
	  #debugger
	  #@order=Orders.all
	  @order=Customer.all
	  
	  @customer = @order.create_customer(:name=> "neha")
	

	  #if @order.Customer.nil?
       # @msg = "No customer found for this order"
      #
  #end

    end
end
