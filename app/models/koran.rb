class Koran < ActiveRecord::Base
	mount_uploader :image, ImageUploader
	has_many :deliveries
	# belongs_to :day
end
