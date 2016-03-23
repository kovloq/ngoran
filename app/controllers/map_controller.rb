class MapController < ApplicationController
	before_action :require_login
	def index
		@customers=Customer.all
	end
end
