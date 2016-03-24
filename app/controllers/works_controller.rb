class WorksController < ApplicationController

	before_action :get_work, only: [:show,:edit,:update,:destroy]

	def index
		@workouts = Work.all.order("created_at DESC")
	end

	def show
	end

	def new 
		@workout = Work.new
	end

	def create		
		@workout = Work.new(works_params)
		if @workout.save
			redirect_to @workout
		else
			render 'new'
		end
	end

	def edit
	end

	def update
		if @workout.update(works_params)
			redirect_to @workout
		else
			render 'edit'
		end
	end

	def destroy
		@workout.destroy
		redirect_to root_path
	end

	private
		def works_params
			params.require(:work).permit(:mood,:workout,:length,:date)
		end

		def get_work
			@workout = Work.find(params[:id])
		end
end
