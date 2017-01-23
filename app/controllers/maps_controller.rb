class MapsController < ApplicationController
	before_action :authenticate_user!
	before_action :set_map, only: [:edit, :update, :destroy, :show]
	
	def new
		@map = current_user.maps.new
	end

	def create
		@map = current_user.maps.new(map_params)

		respond_to do |format|
			if @map.save
		        format.html { redirect_to map_markers_path(@map) }
		        format.json
			else
		        format.html { render :new }
		        format.json { render json: @map.errors, status: :unprocessable_entity }				
			end
		end
	end
	
	def index
		@maps = current_user.maps
		@maps_j = @maps.pluck(:id, :upper_right_latitude, :upper_right_longitude, :lower_left_latitude, :lower_left_longitude).to_json
	end

	def edit
	end

	def update
		if @map.update(map_params)
			redirect_to maps_path
		else
			render 'edit'
		end
	end

	def destroy
		@map.destroy
		redirect_to maps_path
	end

	private

	def set_map
		@map = Map.find(params[:id])
	end

	def map_params
		params.require(:map).permit(:upper_right_longitude, :upper_right_latitude, :lower_left_latitude, :lower_left_longitude)
	end
end