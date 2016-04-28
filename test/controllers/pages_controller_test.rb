require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get roles" do
    get :roles
    assert_response :success
  end

  test "should get functions" do
    get :functions
    assert_response :success
  end

end
