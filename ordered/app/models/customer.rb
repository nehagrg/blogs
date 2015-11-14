class Customer < ActiveRecord::Base
	has_many :orders
	validates :name, length: {minimum: 3}
end
