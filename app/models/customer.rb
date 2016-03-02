class Customer < ActiveRecord::Base
	has_many :deliveries
end
