require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get users_url
    assert_response :success
  end

  test "should get new" do
    get new_user_url
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post users_url, params: { user: { car_id_id: @user.car_id_id, carpool_id_id: @user.carpool_id_id, destAdr: @user.destAdr, fname: @user.fname, homeAdr: @user.homeAdr, lname: @user.lname, maxDist: @user.maxDist } }
    end

    assert_redirected_to user_url(User.last)
  end

  test "should show user" do
    get user_url(@user)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_url(@user)
    assert_response :success
  end

  test "should update user" do
    patch user_url(@user), params: { user: { car_id_id: @user.car_id_id, carpool_id_id: @user.carpool_id_id, destAdr: @user.destAdr, fname: @user.fname, homeAdr: @user.homeAdr, lname: @user.lname, maxDist: @user.maxDist } }
    assert_redirected_to user_url(@user)
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete user_url(@user)
    end

    assert_redirected_to users_url
  end
end
