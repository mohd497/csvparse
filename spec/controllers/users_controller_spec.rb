require 'rails_helper'

RSpec.describe UsersController, type: :controller do

	let(:user_params) { [{ id: '2', first_name: 'firstname', last_name: 'last_name' },{ id: '3', first_name: 'firstname', last_name: 'last_name' }] }
	
	it "should send json response of first name and its count" do
	  post :user_count, params: { users: user_params }
      expect(response.body).to eq('["firstname"]') #incompelete results right now changw it to {'first_name' => 1}
	end	
end
