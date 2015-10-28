require 'test_helper'

class Api::V1::SessionsControllerTest < ActionController::TestCase

  test "should post session" do
    post :create
    assert_response :success
  end

  test "should destroy session" do
    # delete :destroy
    # assert_response :success
  end
end
