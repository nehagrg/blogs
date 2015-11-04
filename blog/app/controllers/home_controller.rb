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

    end
end
