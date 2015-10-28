require 'test_helper'

class Api::V1::UsersControllerTest < ActionController::TestCase

  test "should get users" do
    get :index
    assert_response :success
    assert_not_empty assigns(:users)
  end

end
