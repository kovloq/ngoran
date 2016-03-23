require 'test_helper'

class UserControllerTest < ActionController::TestCase
  test "should get logoutprofile" do
    get :logoutprofile
    assert_response :success
  end

end
