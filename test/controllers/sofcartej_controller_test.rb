require 'test_helper'

class SofcartejControllerTest < ActionController::TestCase
  test "should get inicio" do
    get :inicio
    assert_response :success
  end

  test "should get sofcartej" do
    get :sofcartej
    assert_response :success
  end

end
