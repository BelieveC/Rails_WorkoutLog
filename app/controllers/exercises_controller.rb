class ExercisesController < ApplicationController

	def create
		@workout = Work.find(params[:work_id])
		@exercise = @workout.exercises.create(params[:exercise].permit(:reps,:name,:sets))
		redirect_to @workout
	end
end
