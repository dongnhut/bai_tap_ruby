require 'test_helper'

class DanhsachnamControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
