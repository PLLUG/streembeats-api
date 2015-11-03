require 'test_helper'

class Api::V1::GenresControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "should get genres" do
    get :index
    assert_response :success
    assert_not_empty assigns(:genres)
  end
end
