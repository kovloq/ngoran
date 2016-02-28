class Koran < ActiveRecord::Base
	mount_uploader :image, ImageUploader
	# belongs_to :day
end
