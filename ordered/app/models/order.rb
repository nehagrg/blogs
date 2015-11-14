class Order < ActiveRecord::Base
	belongs_to :customer,class_name: "Customer",counter_cache: true,foreign_key: "customer_id"
end
