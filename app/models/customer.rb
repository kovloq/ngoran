class Customer < ActiveRecord::Base
	has_many :deliveries
	mount_uploader :image, ImageUploader
end
