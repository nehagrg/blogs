class HomeController < ApplicationController
	def index
		@c=Customer.first
		@o = @c.orders.first
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

    def user
        @user=User.all
         
         if params[:direction].present? and params[:sort].present? and params[:name].present?  
            @user = User.where(name: params[:name]).order(params[:sort] + ' ' + params[:direction])        
         elsif params[:direction].blank? and params[:sort].blank? and params[:name].present?          
            params[:direction] = "asc"
            params[:sort] = "name"
             
            @user = User.where(name: params[:name]).order(params[:sort] + ' ' + params[:direction])       
         elsif params[:direction].present? and params[:sort].present? and params[:name].blank?  
            params[:name] = "1"
            @user = User.order(params[:sort] + ' ' + params[:direction])
         elsif params[:direction].blank? and params[:sort].blank? and params[:name].blank?      
            params[:direction] = "asc"
            params[:sort] = "name"
            params[:name] = "1"
             
            @user = User.order(params[:sort] + ' ' + params[:direction])
         
         end
    end 
    def find
        redirect_to :action=>"user"
    end 
    helper_method :sort_column, :sort_direction
  
    def alluser
      @user = User.all.order(sort_column + " " + sort_direction)
    end
    private
  def sort_column
    params[:sort] || "name"
  end
  
  def sort_direction
    params[:direction] || "asc"
  end
  
  
  
  
	

end
