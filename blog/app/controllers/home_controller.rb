class HomeController < ApplicationController
	def index
		@employees=Employee.all
	end	
	def show
		#@employee=Employee.find(params[:id])
		@e = Employee.take
		@e1 = Employee.take(2)
		@e2 = Employee.first
		@e3 = Employee.first(3)
		@e4 = Employee.last()
		@e5 = Employee.last(2)
		@e6 =Employee.find_by name: 'malik'
		#@e67 =Employee.find_by! name: 'malik'
        @batch=Employee.all
        @each=Employee.find_each(batch_size: 3)
        @start=Employee.find_each(start:2,batch_size:5)
        #@find=Employee.find_in_batches
        @c=Employee.where("name='arun'")

        @array=Employee.where("name=?",params[:name])


        #@place=Employee.where("created_at>= :start_date And craeted_at>= :end_date",{start_name: params[:start_date],end_name: params[:end_date]})

        @hash=Employee.where(address:'faridabad')
        
        #@range=Employee.where(created_at: (Time.now.midnight - 1.day)..Time.now.midnight)
        @subset=Employee.where(name: ['malik','aish','arun'])
        @not=Employee.where.not(name: 'arun')
        @order=Employee.order(:address)
        @select=Employee.select("address,gender")
        @s1=Employee.select("name").distinct
        @limit=Employee.limit(3).offset(2)
        @group=Employee.select("name,address as city").group("name,address,gender")
        #@g=Employee.group(:name).count 
        @having=Employee.select("name,address as city,sum(id)as toatl").group("name,address").having("sum(id)>4") 
        @unscope=Employee.where('id>2').limit(3).order('name,asc').unscope(:order) 
        @reverse=Employee.where('id>2').order(:name).reverse_order  
        @join=Employee.joins('right outer join speeches on speeches.Employee_id = employees.id') 
        @innerjoin=Employee.joins(:comments)
        @multiplejoin=Employee.joins(:speeches,:comments)
        @include=Employee.includes(:speeches).limit(3)
        @create=Employee.find_or_create_by(name: 'surbhi')
       # @initialize=Employee.find_or_initialize_by(name: 'arun')
        @initialize.save
        @sql=Employee.find_by_sql("SELECT * FROM employees
        INNER JOIN speeches ON employees.id = speeches.employee_id

        ORDER BY employees.name desc")
        @pluck=Employee.pluck(:id)
        @pluck1=Employee.distinct.pluck(:id)
        @selectp=Employee.select(:id).map{|c| c.id}
       
    end


 
    def formview    
    end   

    def form
        @employee=Employee.all
        @employee=Employee.new
        
    end 

    def create
       
        @employee=Employee.create(:name => params[:employee][:name],:address=> params[:employee][:address])  
     
    end

    def delete
       
        @employee=Employee.where(:name => params[:employee][:name],:address=> params[:employee][:address]) 
        @employee.delete_all
     
    end
    def edit
        
        @employee =Employee.find(params[:id])
  
    end
    def create1
       @employee =Employee.find(params[:id])
       
        @employee=Employee.create(:name => params[:employee][:name],:address=> params[:employee][:address])  

    end

    def update
         @employee =Employee.find(params[:id])
         @employee.update(:name => params[:name],:address=> params[:city] ,:gender=> params[:gender]) 
    end 

    def update_file

        @employee=Employee.find(params[:id])
    end

    def update_data
        @employee=Employee.new
        @employee=Employee.find(params[:id])
    end 

    def updateddata
         
        @employee=Employee.new
        @employee=Employee.find(params[:id])
        @employee.update(:name => 'rahul',:address=> 'fbd' ,:gender=> 'male') 
    end 
         
    def alluser
           params[:sort] = "name"
           params[:direction] = "asc"
           
         @employees =Employee.find_by(:name => params[:name]).ORDER(params[:sort] + ' ' + params[:direction])
     end
    

    

    def users
        @e =Employee.order(params[:sort])
    end

    def search
              
        @e=Employee.find_by(:name => params[:name])
    end  

    def select
         @employee=Employee.new(gender: 2)

    end  

    def datentime
    end   

    def searching
        if
            @e=Employee.find_by(:name => params[:name])==blank?
            @e=Employee.order(params[:sort])
        else
            redirect_to action:"users"
        end  
    end
    
    def upload
        uploaded_io = params[:employee][:name]
        File.open(Rails.root.join('public', 'uploads', uploaded_io.original_filename), 'wb') do |file|
        file.write(uploaded_io.read)
        end
    end
    def builder
        @employee=Employee.all

    end 
    def finduser
       
         
         if params[:direction].present? and params[:sort].present? and params[:name].present?  
              @employee = Employee.where( params[:name]).order(params[:sort] + ' ' + params[:direction]) 

         elsif params[:direction].blank? and params[:sort].blank? and params[:name].present?          
               params[:direction] = "asc"
               params[:sort] = "name"
             
               @employee = Employee.where( params[:name]).order(params[:sort] + ' ' + params[:direction])

        elsif params[:direction].present? and params[:sort].present? and params[:name].blank?  
              params[:name] = "1"
              @employee = Employee.order(params[:sort] + ' ' + params[:direction])

        elsif params[:direction].blank? and params[:sort].blank? and params[:name].blank?            
              params[:direction] = "asc"
              params[:sort] = "name"
              params[:name] = "1"
              @employee= Employee.order(params[:sort] + ' ' + params[:direction])
         
        end 
    end
    def find
        redirect_to "finduser?name=#{params[:name]}"
    end 

    def association
        @employee
    end  

    def texteditor
     end 
     def whatever
     end  



end           
        
        
        
