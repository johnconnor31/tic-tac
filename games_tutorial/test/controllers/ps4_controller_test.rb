require 'test_helper'

class Ps4ControllerTest < ActionController::TestCase
  test "should get addGame" do
    get :addGame
    assert_response :success
  end

end
