class UsersController < ApplicationController

	def user_count
		#read users json object gave as post
		users = params[:users]
		first_names = []
		users.each do |user| #iterate through it
			first_names << user['first_name']
		end

		users = User.where(first_name: first_names)
		users = users.map {|user| user.first_name} #process in db
		result = users.each_with_object(Hash.new(0)) { |users,counts| counts[a] += 1 }.map{|k,v| k if v >= 2}.compact 
		#take out users count per first name if count 2 or above

		render json: result	

	end		

end
