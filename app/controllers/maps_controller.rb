class MapsController < ApplicationController
	before_action :authenticate_user!
	before_action :set_maps
	
	def index
		@maps = current_user.maps
	end

	private

	def set_maps
		@maps = current_user.maps
	end

end