require 'rails_helper'

RSpec.describe UsersController, type: :controller do

	describe "sending user data" do
		it "should send back the results" do
      @users = [{ id: '2', first_name: 'firstname', last_name: 'last_name' },{ id: '3', first_name: 'firstname', last_name: 'last_name' }]
      post :user_count, params: { users: @users }
      expect(response.body).to eq('["firstname"]')
end
	end	

end
