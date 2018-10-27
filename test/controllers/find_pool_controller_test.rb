require 'test_helper'

class FindPoolControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get find_pool_new_url
    assert_response :success
  end

  test "should get create" do
    get find_pool_create_url
    assert_response :success
  end

end
