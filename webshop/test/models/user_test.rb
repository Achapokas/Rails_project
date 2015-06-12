require 'test_helper'

class UserTest < ActiveSupport::TestCase
	test 'a user with no attributes is not valid' do
		user = User.new
		assert !user.save,'Saved a user with no attributes.'
	end

	test "the two fixture users are valid" do
    	assert User.new(last_name: users(:one).last_name, login_name: users(:one).login_name ).valid?, 'First fixture is not valid.'
    	assert User.new(last_name: users(:two).last_name, login_name: users(:two).login_name ).valid?, 'Second fixture is not valid.'
  	end	
end
