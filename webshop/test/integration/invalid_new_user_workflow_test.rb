require 'test_helper'

class InvalidNewUserWorkflowTest < ActionDispatch::IntegrationTest
  fixtures :all

  test 'try to create a new empty user and check for flash error messages' do
    get '/users/new'
    assert_response :success

    post_via_redirect "/users", user: {:last_name => users(:one).last_name} 
    assert_equal '/users', path
    assert_select 'li', "Login name can&#39;t be blank"
    assert_select 'li', "Login name is too short (minimum is 10 characters)"
  end
end