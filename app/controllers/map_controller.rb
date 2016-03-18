class MapController < ApplicationController
	def index
		@customers=Customer.all
	end
end
