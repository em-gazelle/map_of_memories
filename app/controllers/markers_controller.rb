class MarkersController < ApplicationController
	before_action :set_map

	def new
		@marker = @map.markers.new
	end

	def create
		@marker = @map.markers.create(marker_params)

		respond_to do |format|
			if @marker.save
		        format.html { redirect_to map_markers_path(@map) }
		        format.json
			else
		        format.html { render :new }
		        format.json { render json: @marker.errors, status: :unprocessable_entity }				
			end
		end
	end

	def index
		@mapatt = @map.attributes.slice("id", "upper_right_latitude", "upper_right_longitude",
								"lower_left_latitude", "lower_left_longitude").map{|k,v| v}
		@markers = @map.markers
		@marks_j = @markers.pluck(:longitude, :latitude, :title, :description).to_json.to_json
	end

	private 

	def set_map
		@map = Map.find(params[:map_id])
	end

	def marker_params
		params.require(:marker).permit(:longitude, :latitude, :title, :description, :map_id, :icon)
	end

end