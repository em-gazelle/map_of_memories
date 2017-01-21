class MarkersController < ApplicationController
	before_action :set_map
	
	def new
	end

	def create
	end

	private 

	def set_map
		@map = map.find(params[:id])
	end
end