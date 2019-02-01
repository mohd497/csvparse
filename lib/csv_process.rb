module CsvProcess

	def first_names(user_params)
		#read users json object gave as post
		users = user_params
		first_names = []
		users.each do |user| #iterate through it
			first_names << user['first_name']
			user = User.new(:first_name => user['first_name'], :last_name => user['last_name']) #save each incomnig user
			user.save 
		end

		users = User.where(first_name: first_names)
		users = users.map {|user| user.first_name} #process in db
		result = users.each_with_object(Hash.new(0)) { |users,counts| counts[users] += 1 }.map{|k,v| k if v >= 2} 
		#take out users count per first name if count 2 or above
	end	

end	