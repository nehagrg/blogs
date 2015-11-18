class HomeController < ApplicationController
	 helper_method :sort_column, :sort_direction
  def index
		@c=Customer.first
		@o = @c.orders.first
     @user = User.order(sort_column + ' ' + sort_direction)
	end	
  private
  def sort_column
    params[:sort] || "name"
  end
  
  def sort_direction
    params[:direction] || "asc"
  end

	def new
		@customer=Customer.new
	end
	def create
		@custome=Customer.create(:name=>params[:customer][:name])
	end
	def remove
       @customer=Customer.all
       @customer=Customer.new
	end	
	def delete
		@customer=Customer.where(:name=> params[:customer][:name])
		@customer.delete_all
	end	
	def edit
		@customer=Customer.new
	end	
	
	def update
		@customer=Customer.where(:name=>params[:customer][:name])
		debugger
		@customer=Customer.update(:name=>'pragya')
	end	  

	def sortTable 
        @customers = Customer.find(:all, :order => params[:filter])
    end 

    
    
    def find
        
    end 
    helper_method :sort_column, :sort_direction
    def user
    
      @user = User.all
        
    end
    private
  def sort_column
    params[:sort] || "name"
  end
  
  def sort_direction
    params[:direction] || "asc"
  end

    def search
              
        @user=User.find_by(:name => params[:name])
    end  
    
    
  
  
	

end
