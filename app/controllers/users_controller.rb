class UsersController < ApplicationController
	include CsvProcess

	def user_count
		result = first_names(params[:users])	
		render json: result
	end		

end
