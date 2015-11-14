class HomeController < ApplicationController
	def index
	  @orders = Order.where(customer_id: '3')
	  @c= Customer.first
	  @o = @c.orders.first
	  @c.name == @o.customer.name
      @customer=Customer.all
	  #@customer=@order.Customer
	  #@order.customer = @customer
	  #debugger
	  #@customer = @order.build_customers(name: "John Doe")
	

	  #if @order.Customer.nil?
       # @msg = "No customer found for this order"
      #
  #end

    end
end
